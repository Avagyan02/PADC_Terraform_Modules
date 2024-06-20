resource "aws_iam_policy" "lambda_role_policy" {
  name   = "aws_lamnda_role_policy"
  policy = var.lambda_role_policy
}

resource "aws_iam_role" "lambda_role" {
  name               = "aws_lambda_role"
  assume_role_policy = <<EOF
    {
      "Version": "2012-10-17",
      "Statement": [
        {
          "Effect": "Allow",
          "Principal": {
            "Service": "lambda.amazonaws.com"
          },
          "Action": "sts:AssumeRole"
        }
      ]
    }
  EOF
}

resource "aws_iam_role_policy_attachment" "lambda_role_policy_attachment" {
  role       = aws_iam_role.lambda_role.name
  policy_arn = aws_iam_policy.lambda_role_policy.arn
}

resource "aws_iam_policy" "lambda_role_policy_2" {
  name = "aws_lamnda_role_policy_from_user"
  policy = <<EOF
    {
      "Version": "2012-10-17",
      "Statement": [
        {
            "Effect": "Allow",
            "Resource": "*",
            "Action": [
                "ec2:DescribeInstances",
                "ec2:CreateNetworkInterface",
                "ec2:AttachNetworkInterface",
                "ec2:DescribeNetworkInterfaces",
                "autoscaling:CompleteLifecycleAction",
                "ec2:DeleteNetworkInterface"
            ]
        }
      ]
    }
  EOF
}

resource "aws_iam_role_policy_attachment" "lambda_role_policy_attachment_2" {
  role       = aws_iam_role.lambda_role.name
  policy_arn = aws_iam_policy.lambda_role_policy_2.arn
}

