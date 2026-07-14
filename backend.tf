terraform {

   backend "s3" {

    bucket         = "durgadevops-terraform-state-bk"
    key            = "dev/project/terraform.tfstate"
    region         = "ap-south-1"

    encrypt        = true

    use_lockfile   = true
  }

  

}
