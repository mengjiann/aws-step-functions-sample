# Sample Project for AWS Step Functions

This is to demonstrate the usage of several AWS Lambda functions to create a workflow on AWS Step Function. Terraform configuration files are also provided to simplify the process of setting up the required AWS resources.

# AWS Lambda Function
- power-of-number-lambda - To calculate the power of a number.
- random-number-generator-lambda - To generate a random number between MIN and MAX.

# Terraform - Prerequisite
- To use terraform, go to [here](https://learn.hashicorp.com/terraform/getting-started/install.html) to install and learn Terraform by Hashicorp.
    - For homebrew user: `brew install terraform`
- AWS user (programmatic access) with AdministratorAccess. Copy the `access key ID` and `secret access key` to setup the `awscli` later.
- Install `awscli` from official [guide](https://docs.aws.amazon.com/cli/latest/userguide/install-linux-al2017.html)
    - For homebrew user: `brew install awscli`
- Using the `access key ID` and `secret access key`, follow this [guide](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html) to step a new profile for your `awscli`.

# Terraform - Guide
 - After `git clone`, change directory to `cd ./terraform/`.
 - Then, `terraform init` to initializes various local settings and data that will be used by subsequent commands.
 - Update the variables in `variables.tf` for the Step Functions sample.
 - Then, `terraform apply` to provision the Lambda functions and Step Function state machine for this project.
 - Finally, `terraform destroy` to remove the Lambda functions and Step Function state machine.

# Reference
- [AWS Step Functions](https://docs.aws.amazon.com/step-functions/latest/dg/welcome.html)
- [AWS State Language Official Documentation](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html)
- [Terraform Guide](https://learn.hashicorp.com/terraform/getting-started/install.html)
