terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.67.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"

}
resource "aws_iam_group" "developers" {
  name = "developersmom"
  
}
resource "aws_iam_user" "example" {
  name = "blin"
}
resource "aws_lightsail_instance" "test" {
  name              = "custom_instance"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_3_0"
  add_on {
    type          = "AutoSnapshot"
    snapshot_time = "06:00"
    status        = "Enabled"
  }
  tags = {
    foo = "biyyyyyy"
  }
}