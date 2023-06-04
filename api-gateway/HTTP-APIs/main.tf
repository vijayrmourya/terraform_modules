resource "aws_apigatewayv2_api" "simple-serverless-http-api" {
  name          = var.http-api-name
  protocol_type = "HTTP"
}

resource "aws_apigatewayv2_integration" "simple-serverless-api-interation" {
  api_id = aws_apigatewayv2_api.simple-serverless-http-api.id
  integration_type = "HTTP_PROXY"

  integration_method = "GET"
  integration_uri    = "https://example.com/"
}

resource "aws_apigatewayv2_route" "simple-serverless-api-route" {
  api_id = aws_apigatewayv2_api.simple-serverless-http-api.id
  route_key = "GET /example/domaining"

  target = "integrations/${aws_apigatewayv2_integration.simple-serverless-api-interation.id}"
}

resource "aws_apigatewayv2_stage" "simple-serverless-api-stage" {
  for_each = var.api_stages
  api_id = aws_apigatewayv2_api.simple-serverless-http-api.id
  name   = each.value.name
  auto_deploy = each.value.auto_deploy
}
