module "vpc" {
  source          = "terraform-aws-modules/vpc/aws"
  name            = "Vprofile-VPC"
  cidr            = "172.0.0.0/16"
  azs             = split(data.aws_availability_zones.available.names, "0,3")
  private_subnets = ["172.20.1.0/24", "172.20.2.0/24", "172.20.3.0/24"]
  public_subnets  = ["172.20.4.0/24", "172.20.5.0/24", "172.20.6.0/24"]

  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true

  public_subnet_tags = {
    "kubernetes.io/role/elb"                      = 1
    "kubernetes.io/cluster/${local.cluster_name}" = "shared"
  }

  private_subnet_tags = {

    "kubernetes.io/role/internal-elb"             = 1
    "kubernetes.io/cluster/${local.cluster_name}" = "shared"
  }

}
