resource "aws_api_gateway_rest_api" "MyDemoAPI" {
  name        = var.rest-api-name
  description = "This is my API for demonstration purposes"
}