variable "env"{
    type        = string
     description = "name of (env,qa,prod)"
}

variable "cidr"{
    type        = string
     description = "vpc cidr"
}

variable "cidrsubnet"{
    type        = string
     description = "vpcsubnet cidr"
}

variable "azsubnet"{
    type        = string
     description = "availbility zone"
}