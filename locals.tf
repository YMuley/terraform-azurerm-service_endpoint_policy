locals {
  policy_name = {for policy in var.servar.service_endpoint_policy_list : policy.name => policy }
}