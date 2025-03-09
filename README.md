# Terraform-Test-333
This project contains how to use Terraform for infrastructure provisioning on AWS, and how Ansible works for configuration management and software configuration. This project also include the Docker container deployment and CI/CD pipeline integration using GitHub.

## File Structure
```
Terraform-Test-333:.
│   .terraform.lock.hcl
│   main.tf
│   terraform.tfstate
│   aws_key_333
│   aws_key_333.pub
│   .gitignore
│
├───.terraform
│   ├───modules
│   │       modules.json
│   │
│   └───providers
│       └───registry.terraform.io
│           └───hashicorp
│               └───aws
│                   └───5.87.0
│                       └───darwin_arm64
│                               LICENSE.txt
│                               terraform-provider-aws_v5.87.0_x5
│
├───Ansible
│       deploy-docker-container.yml
│       docker-setup.yml
│       hosts.ini
|
├───Docker
│       Dockerfile
│       index.html
|
├───EC2Script
│       main.tf
│       variable.tf
│
├───KeyPairs
│       main.tf
│       output.tf
│
├───SecurityGroups
│       main.tf
│       output.tf
│       variable.tf
│
└───VPC
        main.tf
        output.tf
        variable.tf
```

##Terraform

Terraform is an open-source infrastructure provisioning tool created by HashiCorp, it allows you to define and manage your infrastructure using a declarative language which is written in GO language.

##Prerequisites

Create AWS Account and IAM user.
Install Terrafom.

##Usage

The automation step begins by creating VPC for network for EC2, and then Security group for filtering incoming and outgoing traffics. After that creating ssh key piar for further access. Finally, EC2 instance was created by using t2.micro with Amazon Linux OS in eu-west-1 (Ireland) region.

Before initialize the project using terraform, have to generate ssh private key and public key. For that, below commad can be used:
(rsa is an algorithm)
```
ssh-keygen -t rsa -b 2048 -m PEM -f my_aws_key
```

It will create private and public keys. After creating necessary folders, should run below commands:

First initialize the project:
```
terraform init
```

Then validate the project to see whether there are errors:
```
terraform validate
```


Run this command to display the plan:
```
terraform plan
```

Now this command will apply the changes and it will create EC2 instance:
```
terraform apply -auto-approve
```

Then it will create EC2 instance in AWS. And if we want to destroy the EC2 instance, we can use:
```
terraform destroy -auto-approve
```


## Reference
[Medium note for terraform](https://medium.com/@deepamathan/terraform-infrastructure-as-a-code-1dbf0f7ed3e1)

## Contact
Maintained by [Hirosh Koshila](https://github.com/20051682).
