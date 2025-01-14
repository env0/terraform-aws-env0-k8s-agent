# env0 k8s Agent Module For AWS
This repo contains a set of [modules folder](https://github.com/env0/terraform-env0-k8s-agent-aws/tree/main/modules) for deploying an EKS cluster, for env0 agent, on AWS.

# How to use this Module
- [modules](https://github.com/env0/terraform-env0-k8s-agent-aws/tree/main/modules):  This folder contains several standalone, reusable, production-grade modules that you can use to deploy env0 Agent.
- [examples](https://github.com/env0/terraform-env0-k8s-agent-aws/tree/main/examples): This folder shows examples of different ways to combine the modules in the modules folder to deploy env0 Agent on AWS.

To use this module in your own configuration create an input variable `modules_info`:
```json
{
	"vpc": {
		"create": false,
		"id": "vpc-092f26b60590er54e",
		"private_subnets": ["subnet-091d4e5655cfc76bc", "subnet-095cdaad05gvba8d6", "subnet-01c8446e553m7eeef", "subnet-0729b32d5901a16c4", "subnet-01e93749f145780bf"]
	},
	"efs": {
		"create": false,
		"id": "fs-0ed81543dff9d682"
	},
	"eks": {
		"create": false,
		"cluster_id": "some-eks"
	},
	"autoscaler": {
		"create": false
	},
	"csi_driver": {
		"create": false
	}
}
```

then use `terraform-env0-k8s-agent-aws` in your configuration:
```terraform
module "my-agent-eks-cluster" {
  source  = "env0/env0-k8s-agent/aws"

  region            = var.region
  cluster_name      = var.cluster_name
  modules_info      = var.modules_info
}
```

# Who maintains this Module?
This Module is maintained by [env0](www.env0.com). if you're looking for help or commercial support, send an email to support@env0.com 

# How is this Module versioned?
This Module follows the principles of [Semantic Versioning])(http://semver.org/). You can find each new release, along with the changelog, in the [Releases Page](https://github.com/env0/terraform-env0-k8s-agent-aws/releases).

During initial development, the major version will be 0 (e.g., 0.x.y), which indicates the code does not yet have a stable API. Once we hit 1.0.0, we will make every effort to maintain a backwards compatible API and use the MAJOR, MINOR, and PATCH versions on each release to indicate any incompatibilities.

# License
This code is released under the Apache 2.0 License. Please see [LICENSE](https://github.com/env0/terraform-env0-k8s-agent-aws/tree/master/LICENSE) for more details.

Copyright © 2022 env0, Inc.
