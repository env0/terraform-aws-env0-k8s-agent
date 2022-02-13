module "my-agent-cluster" {
  source  = "env0/env0-k8s-agent/aws"
  
  region            = var.region
  cluster_name      = var.cluster_name
  modules_info      = var.modules_info
  env0_values       = var.env0_values  
  customer_values   = var.customer_values
}