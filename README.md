# Flywheel Backstage Demo

Demo of using the backstage tool to create new repos seeded with instructions on how to create Atlas from the Atlas Kubernetes Operator





## Setup

1. Clone the repository
1. Create a new file called `.env` in the root of your project. 
1. Add the following entries to your `.env` file

```shell

GH_PA_TOKEN=<Github Personal Access Token Value>
GITHUB_CLIENT=<Github OAuth Client>
GITHUB_CLIENT_SECRET=<Github OAuth Client Secret>
GITHUB_USER_NAME=<Github user name>

```
1. In the `overrides/examples/org.yaml` file replace both values of `<GITHUB_USER_NAME>` with the same value you provided above for your github User Name. 


## Execute

```shell
docker build -t backstage .

docker-compose up 
```

Navigate to `http://localhost:3000` to view the app



### Creating Github Personal Access Token

Follow the instructions here to create your Github Personal Access Token



### Creating a Github App with OAuth support

To create an app in Github (for backstage to use) follow the instructions for [Create Github App](https://docs.github.com/en/apps/oauth-apps/building-oauth-apps/creating-an-oauth-app)

The "Homepage URL" should point to Backstage's frontend, in our tutorial it would be `http://localhost:3000`

The "Authorization callback URL" will point to the auth backend, which will most likely be `http://localhost:7007/api/auth/github/handler/frame`






