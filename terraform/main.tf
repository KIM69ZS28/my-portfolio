provider "aws" {
    region = "ap-northeast-1"
    profile = "terraform-role"
}

resource "aws_vpc" "pf_vpc" {
  
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "pf_app_vpc"
    }

}

resource "aws_subnet" "pf_subnet" {

    vpc_id = aws_vpc.pf_vpc.id

    cidr_block = "10.0.0.0/24"
    tags = {
        Name = "pf_app_subnet"
    }
  
}