resource "aws_db_subnet_group" "db" {

  name = "database-subnet"

  subnet_ids = [

    aws_subnet.private.id

  ]

}

resource "aws_db_instance" "mysql" {

  allocated_storage = 20

  engine = "mysql"

  engine_version = "8.0"

  instance_class = "db.t3.micro"

  db_name = var.db_name

  username = local.db_secret.username
  password = local.db_secret.password

  skip_final_snapshot = true

  db_subnet_group_name = aws_db_subnet_group.db.name

}
