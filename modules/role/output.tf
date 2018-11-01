output "arn" {
  description = "IAM role ARN"
  value       = "${local.role_arn}"
}

output "id" {
  description = "IAM role id"
  value       = "${local.role_id}"
}

output "name" {
  description = "IAM role name"
  value       = "${local.role_name}"
}

output "instance_profile" {
  description = "IAM Instance Profile name"
  value       = "${local.instance_profile}"
}
