terraform {
    backend "s3"{
        bucket = "container-practice"
        key = "sample/ecr/terraform.tfstate"
        region = "ap-northeast-1"
    }
}

provider "aws"{
        region = "ap-northeast-1"
}
