data "aws_iam_policy_document" "assume_role" {
  statement {
    effect = "Allow"
    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }
    actions = ["sts:AssumeRole"]
  }
}

resource "aws_iam_role" "iam_for_lambda" {
  name               = "${var.lambda_function_name}-iam-role"
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
}

data "archive_file" "lambda" {
  source_dir = "${path.module}/../../LambdaCodeArchives/${var.ArchiveFolderName}/"
  type        = "zip"
  output_path = "${path.module}/../../LambdaCodeArchives/lambda_payload/${var.ArchiveFolderName}.zip"
}

resource "aws_lambda_function" "test_lambda" {
  filename      = "${path.module}/../../LambdaCodeArchives/lambda_payload/${var.ArchiveFolderName}.zip"
  function_name = var.lambda_function_name
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = "index.test"

  source_code_hash = data.archive_file.lambda.output_base64sha256

  runtime = "nodejs16.x"

  environment {
    variables = {
      foo = "bar"
    }
  }
}