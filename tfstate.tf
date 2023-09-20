terraform {
  backend "s3" {
    bucket = "123-vikas-test"
    key    = "global/s3/terraform.tfstate"
    region = "us-west-1"
  }
}
