terraform {
  backend "s3" {
    bucket = "terraform-s3-b"
    key    = "param/terraform.tfstate"
    region = "us-east-1"
  }
}
