resource "aws_instance" "web-server-1" {

  ami = var.ami_id

  instance_type = var.instance_type

  subnet_id = aws_subnet.public.id

  vpc_security_group_ids = [

    aws_security_group.web_sg.id

  ]

  key_name = var.key_name

  root_block_device {

    volume_size = 20

    volume_type = "gp3"

    encrypted = true

  }

  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name     #added IAM role
  

  tags = {

    Name = "${var.project_name}-server"
    

  }

}








#author- Durga Prasad Patra
