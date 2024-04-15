# IaC
 
We use terraform for deploy the cloud resources. We leverage in the usage of stack to deploy multiples modules. As well the support of multi environments.

 
To use:
create env

    terraform workspace new dev
Init

    terraform init -var-file="../env/dev/secrets.tfvars"
plan

    terraform plan -var-file="../env/dev/secrets.tfvars"
apply

    terraform apply -var-file="../env/dev/secrets.tfvars"

 TFvars file is required with the following data
 

    db_password =  "dbpassword"
    vpc_id =  "vpcID"
    shared_credentials_files =  "/path/to/credentials""
    subnets =  ["subnetID1", "subnetID2"]