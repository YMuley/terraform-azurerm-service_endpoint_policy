locals {
  policy_name = {for policy in var.service_endpoint_policy_list : policy.name => policy }
}