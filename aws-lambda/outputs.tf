output "lambda-invoke-arn" {
  value = aws_lambda_function.test_lambda.invoke_arn
}

output "functionName" {
  value = aws_lambda_function.test_lambda.function_name
}