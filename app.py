import os
import datetime
import logging
import psycopg2

from flask import Flask, jsonify, make_response

logger = logging.getLogger(__name__)
logger.setLevel(logging.INFO)


DB_HOSTNAME = os.getenv("DB_HOSTNAME", "localhost")
DB_USERNAME = os.getenv("DB_USERNAME", "bootstrap")
DB_PASSWORD = os.getenv("DB_PASSWORD", "")
DB_CXN_STRING = f"postgresql://{DB_USERNAME}:{DB_PASSWORD}@{DB_HOSTNAME}:5432/bootstrap"
cxn = psycopg2.connect(DB_CXN_STRING)

app = Flask(__name__)


@app.route("/")
def health():
    return jsonify(message='OK!')


@app.route("/users")
def get_users():
    cur = cxn.cursor()
    query = f'SELECT * FROM public.user;'
    cur.execute(query)
    result = cur.fetchall()
    return jsonify(message=result)


@app.errorhandler(404)
def resource_not_found(e):
    return make_response(jsonify(error='Not found!'), 404)