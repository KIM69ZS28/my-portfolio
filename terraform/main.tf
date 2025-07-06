provider "aws" {
    region = "ap-northeast-1"
}

resource "aws_vpc" "pf_vpc" {
  
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "pf_app_vpc"
    }

}