terraform {
    backend "s3" {
        bucket = "container-practice"
        key = "sample/iam/terraform.tfstate"
        region = "ap-northeast-1"
    }
}

provider "aws" {
    region = "ap-northeast-1"
}
