terraform {

   backend "s3" {

    bucket         = "durgadevops-terraform-state"
    key            = "dev/project/terraform.tfstate"
    region         = "ap-south-1"

    encrypt        = true

    use_lockfile   = true
  }

  

}
