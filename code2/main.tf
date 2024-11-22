resource "aws_lightsail_instance" "l1" {
  name              = "my-server"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  key_pair_name     = "mommy24"
  user_data         = file("setup.sh")
  bundle_id         = "nano_3_0"
  tags = {
    env  = "dev"
    team = "devops"
  }
}

