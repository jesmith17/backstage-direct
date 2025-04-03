---
sidebar_position: 2
---

# Github

The demo uses Github Actions to execute the Terraform build. 

## Github Actions

The backstage process created a Github actions for the repo as part of creating the repo. The Github actions is set to listen only for changes to the contents
 of the `terraform` folder. This allows you to speak to how they can still create other Github Actions as needed if they desire. 

Inside Github Actions there are 2 parts that will happen 

### PR Actions

When there is a pull-request against the `main` branch the actions will run the `terraform plan` actions and then post the results of that plan back to the pull request
as a comment. This makes it really easy for someone reviewing the PR (like a Ops person) to see exactly what changes will be made and applied by approving the PR. 


### Push Action

When the PR (or any change) is pushed to the main branch, the github actions will do a `terraform apply` and start to actually execute the steps against the cluster. 

:::important

Because of a limitation in the `Github push` action inside Backstage, when you do the original creation, it will push a working set of terraform scripts into the folder and should (if all values are correct) have already kicked off a terraform build of your application. 
What you can do is show the customer how the terraform action is running by viewing the Github Actions tab and see the running action. You can the also navigate over to Atlas
 and to the org associated with the API keys you provided, and see that a cluster is being created. 

:::

As part of completing the push action, Github actions will add a terraform state file directly to the project repo. This manages the state of the cluster and allows terraform 
to make incremental updates by comparing whats requested against the state file. 


## Show Changes

To show how future changes will work, the easiest thing is to go in a change some of the values in the `atlas.auto.tfvars` file. 

```terraform  title='terraform/atlas.auto.tfvars'

cluster_name="test"
cloud_provider="AWS"
instance_size="M20"
region="US-EAST-1"
dbuser="yoda"
project_id = "xxxxxxx"
ip_address = "0.0.0.0"
```

Then when prompted, save the changes as a new PR. That will allow you to show the full sequence.
Once the PR is created and you view it, you should see in the middle that actions have run, and when completed you will see a new comment added by Github Actions
 to show the results of the Terraform Plan operation. 

