---
sidebar_position: 1
---

# Backstage

Backstage [backstage.io](https://backstage.io/) is an open source tool that makes it easy to create the type of portal that developers might use to 
request and provision services like MongoDB Atlas. We use it in these demos because of that simplicity but many other tools could fit here, including 
integrations with tools like 
* Service Now
* ZenDesk
* etc

## Running Backstage

After completing the build described in the Setup guide all you need to start backstage is to go to `http://localhost:3000`. The site should load with a view similar to this. 

![Screenshot](/img/backstage-component.png)

:::note

If you do not see the page, the click either the menu at the left and select "Create" or use the "Create" button in the top right corner. 

From the screen above select the option labeled "Atlas Production Terraform Template" to start the process. 

That will present you a screen that looks like this.

![Screenshot](/img/backstage-terraform-screen.png)

This screen is where you will provide the key information to the template to allow Backstage to create the following

* A new Github Repo
  * Using the value in the `App Name` variable as the repo name
  * Using the value in the `GitHub Repo Owner` as the Github org to create it in
* Add a README.md and Gitops Workflow file to the repo
* Add the API keys provided here as Github Secrets to the Github Repo ( so they aren't in plain text anywhere)
* Add the Terraform files to a folder called `/terraform` in the repo including setting default values for region, size. etc
* Create a pull-request for the code changes in the repo

Click `Review` to complete this step, then `Create` to start the process.

The next screen will show you a series of steps being completed (should only take 5-10 seconds). Once that is completed you can go to your Github Repo

