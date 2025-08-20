terraform {
backend "s3"{
  bucket = "my-own-bucket5"
key = "key/terraform.tfstate"
region = "us-east-2"
 }
}
