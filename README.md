# Flywheel Backstage Demo

Demo of using the backstage tool to create new repos seeded with instructions on how to create Atlas from the Atlas Kubernetes Operator

## Setup

1. Clone the repository
1. Create a copy of `.env.example` and name it `.env` in the root of your project. 
1. Add the following entries to your `.env` file

```shell

GH_PA_TOKEN=<Github Personal Access Token Value>
GITHUB_CLIENT=<Github OAuth Client>
GITHUB_CLIENT_SECRET=<Github OAuth Client Secret>
GITHUB_USER_NAME=<Github user name>

```
1. Create a copy of `overrides/examples/org.yaml.example` and name it `overrides/examples/org.yaml`
1. Replace both values of `<GITHUB_USER_NAME>` with the same value you provided above for your github User Name. 


> [!IMPORTANT]  
> Automating creation of an Atlas Cluster requires that you have an API key with `Project Owner` authorization. If you do not already
> have an API key you will need to create one before running the templates.
> 
> Make sure and save both to a file for usage. You will need to copy/paste them into the templates in Backstage when running the demo. 




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


## Overview

The purpose of the demo is to allow users to show the "Art of the Possible" around automating provisioning and updating of an Atlas
cluster. This allows customers to understand the benefits of the "landing Zone" effort which is 

- Reduced operational costs. No more spending time with the ops team to manually provision a MongoDB Atlas cluster
- Enhanced security and audit controls. Automation of the process makes it easier to comply with audits and to ensure that teams are following organization security practices because those can be built into the configuration to start
- Reduced friction for development teams, and moves closer to "You build it, you own it" that is often times the end state goal for DevOps or Platform engineering teams. 






