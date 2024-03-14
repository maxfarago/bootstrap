# Bootstrap

This monorepo contains the code for the full `bootstrap` stack:

1. [Infrastructure](#infrastructure)
2. [Database](#database)
3. [API](#api)
4. [UI](#ui)


## Infrastructure

Stack creation and deployment is handled via [Serverless Framework](https://www.serverless.com/) (SLS), an IaaS solution that deploys code to the [FaaS](https://en.wikipedia.org/wiki/Function_as_a_service) services offered by different cloud providers.

Here it's used to set up Lambda and API Gateway in AWS, and connect them with our Python API. The `serverless.yml` file handles configuration, including cloud provider (AWS) and runtime (Python v3.11).  SLS [parameters](https://www.serverless.com/framework/docs/guides/parameters) are used to safely inject database credentials into the application's environment.


## Database

The `bootstrap` stack uses a PostgreSQL database that is deployed in an AWS [RDS](https://aws.amazon.com/rds/) cluster.  To set up the database for local development, first [install PostgreSQL](https://www.postgresql.org/download/) and follow the instructions for your operating system.

After cloning the repo, navigate to the `db` folder in the application directory and run the `reset.sh` script from within that directory:

```
    pwd
    > /Users/max/code/bootstrap
    cd db
    pwd
    > /Users/max/code/bootstrap/db

    source ./reset.sh
    > ...
    > INSERT 0 6
```

> [!CAUTION]
> Running the reset script will delete any existing data you have in your local `bootstrap` DB instance.


## API

The Bootstrap API is a RESTful API implemented using Python and [Flask](https://flask.palletsprojects.com/en/3.0.x/).  The work of routing HTTP requests to and from our Flask application (via [WSGI](https://en.wikipedia.org/wiki/Web_Server_Gateway_Interface)) is handled by a SLS plugin that is automatically installed during deployment.

### Public Endpoint
Currently the API is deployed into a single development environment.  Deployment is automatic and triggered by changes to the `master` branch of this repo. Until DNS is set up against a human-readable endpoint, the development environment can be accessed at the following endpoint:
```
    https://0j676638y4.execute-api.us-east-1.amazonaws.com/
```

### Local Development
Development of the API locally requires Python v3.11 installed.  If you don't have v3.11 installed, first [install pyenv](https://github.com/pyenv/pyenv?tab=readme-ov-file#installation) so you can easily install and manage different versions of Python.  Then use it to install v3.11:
```
    pyenv install 3.11
    > ...
    > Installed Python-3.11.8 to /Users/max/.pyenv/versions/3.11.8
```

After cloning the repo, create a [virtual environment](https://docs.python.org/3/library/venv.html) inside the application directory.  Then activate the environment and install the requirements:
```
    pwd
    > /Users/max/code/bootstrap
    python -m venv ./venv
    source ./venv/bin/activate

    (venv) pip install -r requirements.txt
    > ...
    > Successfully installed Flask-3.0.2...

```

Since the Bootstrap API is built to deploy on AWS Lambda via Serverless Framework (SLS), we'll need to install SLS and use it to build and deploy a local instance of our application.

SLS recommends installation via [Node Package Manager](https://nodejs.org/en/learn/getting-started/an-introduction-to-the-npm-package-manager).  If you don't have Node.js, it's a good idea to first install [Node Version Manager](https://github.com/nvm-sh/nvm?tab=readme-ov-file#installing-and-updating) and use it to install and manage your Node versions:
```
    (venv) nvm install 20
    ...
    > Now using node v20.11.1 (npm v10.2.4)
```

Use `npm` to install SLS and the [Serverless WSGI](https://www.serverless.com/plugins/serverless-wsgi) plugin:
```
    (venv) npm install -g serverless
    > ...
    > added 516 packages in 44s

    (venv) sls plugin install -n serverless-wsgi
    > ...
    > ✔ Plugin "serverless-wsgi" installed  (2s)
```

To run the server locally on [port 8080](https://www.grc.com/port_8080.htm):
```
    npm run serve
    > ...
    > * Running on http://localhost:8080
```

In another shell, test that the server is running successfully by hitting the health route:
```
    curl localhost:8080
    > {
    >     "message": "OK!"
    > }
```


### Route List
- `GET /` - Health route
- `GET /users` - Retrieves all users in the `user` table
- `POST /users` - Adds a new user to the `user` table
- `GET /events` - Retrieves all events in the `event` table
- `GET /enrollment` - Retrieves the users enrolled in each event in the `event` table

## UI

Initial interface is via Google Forms and Sheets to view, create, edit, and delete data in the database:
- [View All Users](https://docs.google.com/spreadsheets/d/1ZKe3RvqS2tfd7QoGtbJuqAjC06MumdraqxoHF9C_8H4/edit?usp=sharing)
- [Add User](https://forms.gle/VxUd83edfRbAJTeb7)
- [View All Events](https://docs.google.com/spreadsheets/d/1V4aHEdxOMBpcsemU42Zn4O2BSLCCGwP1LhuV6827URc/edit?usp=sharing)