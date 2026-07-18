#create IAM role
resource "aws_iam_role" "ec2_role" {

  name = "ec2-role"

  assume_role_policy = jsonencode({

    Version = "2012-10-17"

    Statement = [

      {

        Effect = "Allow"

        Principal = {

          Service = "ec2.amazonaws.com"

        }

        Action = "sts:AssumeRole"

      }

    ]

  })

}

#CReate policy

resource "aws_iam_policy" "secret_policy" {

  name = "SecretsManagerRead"

  policy = jsonencode({

    Version = "2012-10-17"

    Statement = [

      {

        Effect = "Allow"

        Action = [

          "secretsmanager:GetSecretValue"

        ]

        Resource = aws_secretsmanager_secret.db.arn

      }

    ]

  })

}

# INstance Profile

resource "aws_iam_instance_profile" "ec2_profile" {

  name = "ec2-profile"

  role = aws_iam_role.ec2_role.name

}

#Attach Policy

resource "aws_iam_role_policy_attachment" "secret_attach" {

  role = aws_iam_role.ec2_role.name

  policy_arn = aws_iam_policy.secret_policy.arn

}

