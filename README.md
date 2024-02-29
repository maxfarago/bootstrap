# Bootstrap

This monorepo contains the code for the full `bootstrap` stack:

1. Ops/DevOps (AWS & Serverless)
2. Database (PostgreSQL)
3. API (Python via Flask)
4. UI (TBD)

## Ops/DevOps

Stack creation and deployment is handled via Serverless Framework (SLS), an IaaS solution used here to leverage and quickly set up AWS Lambda and API Gateway.  Configuration is handled via the `serverless.yml` file in the base directory.

## Database

The `bootstrap` stack uses a PostgreSQL database, built using the assets in the `db` directory.  To set up the database local development, you must first have postgres installed on your machine.  Then, `cd` into the `db` folder and run the `reset.sh` script.

> [!CAUTION]
> Running the reset script will delete any existing local `bootstrap` data.

## API

A RESTful API is implemented using Python and Flask, wrapped as the `app` object in the `app.py` file.  The work of routing HTTP requests between SLS and the Flask application is abstracted away and handled by a WSGI plugin that is 

## UI

Under Construction 🚧