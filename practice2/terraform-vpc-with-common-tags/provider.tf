provider "aws" {
    region = "${var.AWS_REGION}"

    default_tags {
      tags = {
        project = "ALB"
        Environment = "demo"
        Service = "Example"
      }
    }
}