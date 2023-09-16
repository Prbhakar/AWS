variable "AWS_REGION" {
    default = "ap-south-1"
}

variable "AMI" {
 
  default = "ami-0f2e255ec956ade7f"

}

variable "availability_zones" {
  description = "AZs in this region to use"
  default = ["ap-south-1a", "ap-south-1a"]
  type = list
}

variable "subnet_cidrs_public" {
  description = "Subnet CIDRs for public subnets (length must match configured availability_zones)"
  # this could be further simplified / computed using cidrsubnet() etc.
  # https://www.terraform.io/docs/configuration/interpolation.html#cidrsubnet-iprange-newbits-netnum-
  default = ["10.0.1.0/24", "10.0.3.0/24"]
  type = list
}