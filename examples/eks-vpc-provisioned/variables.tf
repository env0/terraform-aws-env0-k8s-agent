variable "cluster_name" {}
variable "region" {}
variable "env0_values" {}
variable "customer_values" {}

variable "modules_info" {
  type = object({
    vpc = object({
      create = bool
      id = string
      private_subnets = list(string)
    })
    eks = object({
      create = bool
      cluster_id = string
    })
    efs = object ({
      create = bool
      id = string
    })
    autoscaler = object ({
      create = bool
    })
    csi_driver = object({
      create = bool
    })
  })

  default = {
    vpc = {
      create = false
      id = "1234"
      private_subnets = []
    }
    eks = {
      create = false
      cluster_id = "enter_cluster_name_here"
    }
  }
}