terraform {
  backend "s3" {
    bucket = "terraformstatefilebucket2077"
    key    = "env:/prod/key/terraform/terraform.state"
    region = "ap-southeast-1"
    dynamodb_table = "backend"
  }

}


 