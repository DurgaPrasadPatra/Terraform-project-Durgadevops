locals {

  common_tags = {

    Project     = var.project_name
    Environment = var.environment
    Terraform   = "true"

  }
  db_secret = jsondecode(  data.aws_secretsmanager_secret_version.database.secret_string  )
}
