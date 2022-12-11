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
  backend "s3"{
    bucket = "tf-state-terraforms"
    key = "Jenkins/qa/Security-Groups/terraform.tfstate"
    region  = "us-east-2"
  }
}


module "applicationsg"{
source              = ".\\..\\..\\module\\Security-Groups\\"
env                 = "qa"
internet_access   = "0.0.0.0/0"
}
