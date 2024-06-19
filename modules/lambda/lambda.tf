resource "aws_lambda_function" "main_lambda" {
  filename      = var.lambda_file_name
  function_name = var.lambda_function_name
  role          = aws_iam_role.lambda_role.arn
  handler       = var.lambda_handler_name
  runtime       = var.lambda_runtime
  depends_on    = [aws_iam_role_policy_attachment.lambda_role_policy_attachment]

  vpc_config {
    subnet_ids = var.lambda_subnet_ids
    security_group_ids = [aws_security_group.main.id]
  }
}
