data "aws_secretsmanager_secret" "database" {

  name = "prod/rds/mysql"

}

data "aws_secretsmanager_secret_version" "database" {

  secret_id = data.aws_secretsmanager_secret.database.id

}
