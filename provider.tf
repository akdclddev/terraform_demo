provider "aws" {
  region = var.region
  profile = "Akumar_tf_LT"
} 

terraform {
  backend "s3" {
    bucket = "ltis3backend"
    key    = "terraform.tfstate"
    region = "us-west-2"
    profile = "Akumar_tf_LT"
//    dynamodb_table = "lti_state_lock"
  }
}