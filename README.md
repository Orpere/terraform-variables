
# terraform-variables -> repo that I can use to see how variables work

This repo has as target to define and show what I have learned about terraform variables

how can I use this repository?
You can use this repo as reference or you can clone the repository to your computer using the follow commands

```git
git clone git@github.com:Orpere/terraform-variables.git
```

you can also fork this repo using the fork button on top right on github and use it as yours as the follow example:

![fork](fork.png)

like this you can clone and edit the repository and commit your own changes.

you can clone your own repo as:

```git
git clone git@github.com:<YourGitUser>/terraform-variables.git
```

and use the commands add, commit and push to your own changes

for more instructions to use git you can check the [link](https://rogerdudler.github.io/git-guide/) it will have a much better explanation about all git steps

## Terraform variables

The inspiration for this repository come from the Hashicorp [documentation](https://www.terraform.io/docs/configuration-0-11/variables.html)

![terraform](terraform.png)

**Variables are defined parameters we can use to pass information to the terraform files.**

Variables are used for:

  1) To store sensitive values
  2) Refactoring existing values
  3) keep sensitive data as keys and passwords out of code control systems as Github
  4) populate other variables in the terraform configuration

example : **variables.tf**

```terraform
variable "instance_count" {
  default     = "2"
  description = "count the number of instances"
}

variable "ami_id" {}

variable "instance_type" {}
```

If a variable don't have any value attributed Terraform will prompt for his value on the execution.

a variable must be defined and the values can be defined on other file as **terraform.tfvars**

```terraform
instance_count = "2"
ami_id         = " " # it should be a valid ami
instance_type  = " " # should be a valid type
```

Note: default variables have low precedence. which can be override by CLI
