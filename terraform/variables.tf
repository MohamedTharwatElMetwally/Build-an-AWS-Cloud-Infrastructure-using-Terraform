
variable "vpc_cidr" {
  type        = string
  description = "CIDR Block"
}

variable "vpc_name" {
  type        = string
  description = "VPC Name"
}

variable "region" {
  type        = string
  description = "region"
}

variable "ami" {
  type        = string
  description = "AMI"
}

variable "subnets_details" {
  type = list(object({
    name = string,
    cidr = string,
    availability_zone = string,
    type = string
  }))

  description = "subnets"
}


variable "db_username" {
  description = "Database username"
  default     = "#########################"       # set your db username
}

variable "db_password" {
  description = "Database password"
  default     = "#########################"       # set your db password    
}

variable "my_email" {
  description = "My Email"
  default     = "#########################"       # set your email
}

variable "statefile_bucket" {
  description = "My Email"
  default     = "#########################"       # set bucket name
}

variable "statefile_bucket_arn" {
  description = "My Email"
  default     = "#########################"       # set bucket arn
}



