provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ec2_example" {
  ami           = "ami-0c02fb55956c7d316"  # Ubuntu AMI for us-east-1
  instance_type = "t2.micro"

  tags = {
    Name = "Jenkins-Terraform-EC2"
  }
}

