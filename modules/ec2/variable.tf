variable "ami_id"{
    type        = string
     description = "ami id of my ec2 "
}

variable "instance_type"{
    type        = string
    description = "instance_type id of my ec2 "
}

variable "subnet_id"{
    type        = string
    description = "subnet_id id of my ec2 "
}

variable "instances_count"{
    type        = number   ///chenged
    description = "no.of count"
}

variable "env" {
    type        = string
    description = "name of (env,qa,prod)"
}