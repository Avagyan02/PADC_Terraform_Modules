resource "aws_iam_policy" "lambda_role_policy" {
  name = "aws_lamnda_role_policy"
  policy = file(var.lambda_role_policy_file_path)
}

resource "aws_iam_role" "lambda_role" {
  name = "aws_lambda_role"
  assume_role_policy = file(var.lambda_role_file_path)
}

resource "aws_iam_role_policy_attachment" "lambda_role_policy_attachment" {
  role = aws_iam_role.lambda_role.name
  policy_arn = aws_iam_policy.lambda_role_policy.arn
}