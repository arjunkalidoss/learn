terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

terraform {
  backend "s3" {
    bucket = "tf-state-terraforms"
    key ="Jenkins/qa/Jenkins-server/terraform.tfstate"
    region  = "us-east-2"
  }
}

module "application" {
  source             = ".\\..\\..\\module\\Jenkins-Server-new\\"
  env                = "qa"
  ec2_instace_names  = ["Jenkins001", "myapp001"]
  region             = "us-west-2"
  availability_zones = ["us-east-2a", "us-east-2b"]
  subnet_ids         = ["subnet-9e8005f5", "subnet-b5cf3cc8"]
  instance_type      = "t2.micro"
  //ebs_vol_size       = "10"
}
