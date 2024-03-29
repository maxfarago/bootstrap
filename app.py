from log import logger
from flask import Flask, jsonify, make_response, request

from db import get_cxn, close_cxn


# create the Flask instance
# see: https://flask.palletsprojects.com/en/3.0.x/api/#flask.Flask
app = Flask(__name__)


@app.route("/")
def health():
    return jsonify(message="OK!")


@app.get("/users")
def get_users():
    try:
        cxn = get_cxn()
        cur = cxn.cursor()
        query = "SELECT * FROM public.user;"
        cur.execute(query)
        result = cur.fetchall()
    except Exception as e:
        logger.error(e)
        return make_response(jsonify(error=e), 502)
    finally:
        close_cxn()

    response = jsonify(users=result)
    return response


@app.post("/users")
def add_user():
    # retrieve POST payload as JSON from request
    data = request.get_json()

    # TODO: payload validation
    name_first = f"'{data['name_first']}'"
    name_last = f"'{data['name_last']}'"
    email_personal = f"'{data['email_personal']}'"
    email_professional = f"'{data['email_professional']}'" or "DEFAULT"

    try:
        cxn = get_cxn()
        cur = cxn.cursor()
        query = f"""
            INSERT INTO public.user VALUES
            (DEFAULT, {name_first}, {name_last}, {email_personal}, {email_professional})
            RETURNING id;
        """
        cur.execute(query)
        cxn.commit()
        new_id = cur.fetchone()[0]
    except Exception as e:
        logger.error(e)
        return make_response(jsonify(error=e), 502)
    finally:
        close_cxn()

    response = jsonify(success=f"User added with ID {new_id}")
    return response


@app.route("/events")
def get_events():
    try:
        cxn = get_cxn()
        cur = cxn.cursor()
        query = "SELECT * FROM public.event;"
        cur.execute(query)
        result = cur.fetchall()
    except Exception as e:
        logger.error(e)
        return make_response(jsonify(error=e), 502)
    finally:
        close_cxn()

    response = jsonify(events=result)
    return response


@app.route("/enrollment")
def get_enrollment():
    try:
        cxn = get_cxn()
        cur = cxn.cursor()
        query = """
            SELECT event_name, CONCAT(name_first, ' ', name_last) as enrolled_user, role
            FROM enrollment
            JOIN event ON enrollment.event_id = event.id
            JOIN public.user ON enrollment.user_id = public.user.id
            WHERE is_enrolled = TRUE;
        """
        cur.execute(query)
        result = cur.fetchall()
    except Exception as e:
        logger.error(e)
        return make_response(jsonify(error=e), 502)
    finally:
        close_cxn()

    # roll up by `event` for the response
    event_enrollment = {}
    for event, name, role in result:
        if event not in event_enrollment:
            event_enrollment[event] = []

        enrolled_user = {"name": name, "role": role}
        event_enrollment[event].append(enrolled_user)

    response = jsonify(enrollment=event_enrollment)
    return response


@app.errorhandler(404)
def resource_not_found(e):
    logger.error(e)
    return make_response(jsonify(error="Not found!"), 404)
