module "my-agent-cluster" {
  source  = "env0/env0-k8s-agent/aws"
  
  region            = var.region
  cluster_name      = var.cluster_name
  modules_info      = var.modules_info
}