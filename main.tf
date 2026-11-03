terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "sa-east-1"
}

resource "aws_instance" "cobaia-1" {
  ami           = "ami-0064a1e5f976e938b"
  instance_type = "t3.micro"

  tags = {
    Name        = "Cobaia1-IAM"
    Environment = "Production"
  }
}

resource "aws_instance" "cobaia-2" {
  ami           = "ami-0884c330d44106119"
  instance_type = "t3.micro"

  tags = {
    Name        = "Cobaia2-IAM"
    Environment = "Production"
  }
}