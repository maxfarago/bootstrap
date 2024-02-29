# Bootstrap

This monorepo contains the code for the full `bootstrap` stack:

1. Ops/DevOps
2. Database (PostgreSQL)
3. API (Python via Flask)
4. UI (TBD)


## Ops/DevOps

Stack creation and deployment is handled via [Serverless Framework](https://www.serverless.com/) (SLS), an IaaS solution that deploys code to the [FaaS](https://en.wikipedia.org/wiki/Function_as_a_service) services offered by different cloud providers.

Here it's used to set up Lambda and API Gateway in AWS, and connect them with our Python API. The `serverless.yml` file handles configuration, including cloud provider (AWS) and runtime (Python v3.11).  SLS [parameters](https://www.serverless.com/framework/docs/guides/parameters) are used to safely inject database credentials into the application's environment.


## Database

The `bootstrap` stack uses a PostgreSQL database, built using the assets in the `db` directory.  To set up the database local development, you must first have postgres installed on your machine.  Then, `cd` into the `db` folder and run the `reset.sh` script.

> [!CAUTION]
> Running the reset script will delete any existing data you have in your local `bootstrap` DB instance.


## API

The Bootstrap API is a RESTful API implemented using Python and [Flask](https://flask.palletsprojects.com/en/3.0.x/).  The work of routing HTTP requests to and from our Flask application (via [WSGI](https://en.wikipedia.org/wiki/Web_Server_Gateway_Interface)) is handled by a SLS plugin that is automatically installed during deployment.

### Local Development
Local development on the application requires Python v3.11 installed.  If you don't have v3.11 installed, first [install pyenv](https://github.com/pyenv/pyenv?tab=readme-ov-file#installation) so you can easily install and manage different versions of Python.  Then use it to install v3.11:
```
    pyenv install 3.11
```

After cloning the repo, create a [virtual environment](https://docs.python.org/3/library/venv.html) inside the application directory.  Then activate the environment and install the requirements:
```
    pwd
    > /Users/max/code/bootstrap
    python -m venv ./venv
    source ./venv/bin/activate

    (venv) pip install -r requirements.txt
    ...
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
    > ✔ Plugin "serverless-wsgi" installed  (2s)
```

To run the server locally on port 8080:
```
    npm run serve
    ...
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

Under Construction 🚧