module "vpc" {
    source     = "../../modules/vpc"
    cidr         = "10.0.0.0/16"
    cidrsubnet   = "10.0.1.0/24"
    azsubnet     = "${var.awsregions}a"  // we are calling it from variable folder inside dev folder
    env          =  "dev"


}

module "ec2" {
    source = "../../modules/ec2"
  ami_id        = "ami-0e38835daf6b8a2b9"
  instance_type = "t2.micro"
  subnet_id    =  module.vpc.subnet_id  //its is implicit dependency so once vpc created then only ec2 will be creted
  instances_count  =  1
  env        = "dev"


}

///
//multibranch pipe line 