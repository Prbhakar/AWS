provider "aws" {
    region = "${var.AWS_REGION}"

    default_tags {
      tags = {
        Name = "demo-tf-vpc"
        Environment = "demo"
        Service = "Example"
      }
    }
}