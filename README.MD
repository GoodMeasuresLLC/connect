# What is this
This is a terraform configuration that describes the GoodMeasures AWS connect setup.

# Secrets
There are no secrets stored in this project. All secrets are kept in files in google drives, which you get and place in

environments/staging/terraform.tfvars
or
environments/production/terraform.tfvars

respectively.

# Getting Started

1. clone this project
2. place the secrets in the appropriate terraform.tfvars files
3. cd lambda_source
4. build.sh to create needed .zip archives.

To configure staging,
```
cd environments/staging
terraform plan
```
followed by `terraform apply` after reviewing changes

# How does it work?

- each directory is independent. It doesn't automatically include subdirectories
- each directory has a unique terraform name, which is determined by the module declaration that included it
- each directory typically contains either resource or more modules, or a mixture of both.
- Note that only resources actually create resources on AWS. All of the modules are just organizational units.
- each directory accepts variables (listed in variables.tf).
- variables are used to configure how the directory works
- on creation of the resources in the directory, other parts of that configuration typically need those ids that were generated.
- place those ids references in "outputs.tf", which allows you to reference them in other parts of the configuration.

# Huh?

Yes, that's why there are so many repeated declarations in the code. You have to keep defining input variables so that submodules can access important variables.
Terraform magically figures out what order to create and update the variables to make it all work

# What does terraform manage, or why doesn't it destroy every it doesn't know about?

This is interesting, so pay attention. Terraform only manages what it knows about.

It can know about things one of two ways:
- it creates them
- you "import" them into the project.

In other words, if there are 200 other lambda functions in your account, it will be blissfully unaware of them and won't attempt to manage them unless you explicitely tell terraform about them.

Once you have told terraform about them though, it will notice if you remove one of those functions from the desired configuration, and *then* it will delete them.

# Directory Structure:


## lambda_source
Contains source code that can be built into .zip archives in the compiled directory
## compiled
- Contains the .zip archives for uploading to the lambda files.
- Not checked into git
## modules
### connect
Contains connect and all connect modules, such as lambda_function_associations.
### lambda_functions
Contains all lambda_functions used by connect call flows. 
Exports a variable called "module.lambda_functions.lambda_functions_map", which is a map of all the function arns for use in call flows, etc.
This is a typical pattern in this project - each module exports a map of all the ids it creates.
### lex
Contains all lex bot definitions used by connect call flows
## environment
- contains environment specific configurations
- we don't need or want 200 queues in staging, we don't want to have to manage the
1-800 numbers, for example
- therefore, staging is a pared down version of production
- there users, routing_profiles, queues, contact_flows are site specific



