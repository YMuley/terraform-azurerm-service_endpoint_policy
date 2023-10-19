variable "service_endpoint_policy_list" {
  type = list(any)
  default = []
  description = "list of service endpoint policy"
}

variable "resource_group_output" {
    type = map(any)
    default = {}
    description = "object output resource group"
  
}

