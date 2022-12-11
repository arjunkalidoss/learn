variable "env" {
description = "Name of server environment"
}

variable "availability_zones" {
    type = list(string)
description = "availability_zones"
}

variable "region" {
description = "aws region"
}

variable "app_code" {
description = "Name of application"
default = "test"
}

variable "instance_type" {
description = "instance_type"
}

variable "ec2_instace_names" {
    type = list(string)
description = "ec2_instace_names"
}

variable "subnet_ids" {
  type = list(string)
description = "subnet_ids"
}

//variable "ebs_vol_size" {
//description = "ebs_vol_size"
//}
