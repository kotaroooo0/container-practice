terraform {
    backend "s3" {
        bucket = "container-practice"
        key = "sample/vpc/terraform.tfstate"
        region = "ap-northeast-1"
    }
}

provider "aws" {
    region = "ap-northeast-1"
}
