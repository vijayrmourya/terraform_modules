resource "aws_apigatewayv2_integration" "example" {
  api_id           = var.api-gateway-id
  integration_type = "AWS_PROXY"

  connection_type           = "INTERNET"
  description               = "Lambda example"
  integration_method        = "POST"
  integration_uri           = var.lambda-func-invoke-arn
}