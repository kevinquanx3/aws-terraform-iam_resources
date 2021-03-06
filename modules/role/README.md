# aws-terraform-iam_resources/modules/role

This submodule creates an IAM Role

## Basic Usage

```
module "ec2_instance_role" {
 source = "git@github.com:rackspace-infrastructure-automation/aws-terraform-iam_resources//modules/role?ref=v0.0.1"

 name        = "EC2InstanceRole"
 aws_service = ["ec2.amazonaws.com"]

 policy_arns       = ["arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM"]
 policy_arns_count = 1

 inline_policy       = ["${data.aws_iam_policy_document.ec2_instance_policy.json}"]
 inline_policy_count = 1
}
```

Full working references are available at [examples](examples)

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| aws\_account | A list of AWS accounts allowed to use this cross account role.  Required if the aws_services variable is not provided. | list | `<list>` | no |
| aws\_service | A list of AWS services allowed to assume this role.  Required if the aws_accounts variable is not provided. | list | `<list>` | no |
| build\_state | A variable to control whether resources should be built | string | `"true"` | no |
| external\_id | The external ID to be used for any cross account roles. | string | `""` | no |
| inline\_policy | A list of strings.  Each string should contain a json string to use for this inline policy | list | `<list>` | no |
| inline\_policy\_count | The number of inline policies to be applied to the role. | string | `"0"` | no |
| name | The name prefix for these IAM resources | string | n/a | yes |
| policy\_arns | A list of managed IAM policies to attach to the IAM role | list | `<list>` | no |
| policy\_arns\_count | The number of managed policies to be applied to the role. | string | `"0"` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | IAM role ARN |
| id | IAM role id |
| instance\_profile | IAM Instance Profile name |
| name | IAM role name |

