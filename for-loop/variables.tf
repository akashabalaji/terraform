variable "ami_id" {
  type    = string
  default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
   default = "t3.micro"
}

variable "ec2_tags" {
  type    = map(string)
  default = {
     Name = "HelloWorld"
     purpose ="Variables-demo"
  }
}

variable "sg_name"{
    default = "allow-all"
}

variable "sg_description"{
    default = "allowing all ports from internet"
}

variable "from_port"{
    default = 0
}

variable "to_port"{
    type = number
    default = 0
}

variable "cidr_blocks"{
    type = list(string)
    default = ["0.0.0.0/0"]
}

variable "sg_tags"{
    default = {
        name = "allow-all"
    }
}  

variable "environment" {
    default = "dev"
}

variable "instances" {
    default = {
      mongodb = "t3.micro"
      redis   = "t3.micro"
      mysql   = "t3.small"
      rabbitmq= "t3.micro"
    }
}

variable "zone_id"{
     default = "Z00173281MRJFFPM52LSY"
}

variable "domain_name" {
        default ="akashabalaji.site"
}

