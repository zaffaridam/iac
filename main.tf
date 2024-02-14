terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "ap-south-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-03f4878755434977f"
  instance_type = "t2.micro"
  key_name      = "iac-alura"

  tags = {
    Name = "TerraformIaC"
    Client = "Teste"
  }
}
