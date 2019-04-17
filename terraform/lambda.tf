
// Create archives for AWS Lambda functions which will be used for Step Function

data "archive_file" "archive-power-of-number-lambda" {
  type        = "zip"
  output_path = "../power-of-number-lambda/archive.zip"
  source_file = "../power-of-number-lambda/index.js"
}

data "archive_file" "archive-random-number-generator-lambda" {
  type        = "zip"
  output_path = "../random-number-generator-lambda/archive.zip"
  source_file = "../random-number-generator-lambda/index.js"
}

// Create IAM role for AWS Lambda

resource "aws_iam_role" "iam_for_lambda" {
  name = "stepFunctionSampleLambdaIAM"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

// Create AWS Lambda functions

resource "aws_lambda_function" "power-of-number-lambda" {
  filename         = "../power-of-number-lambda/archive.zip"
  function_name    = "step-functions-sample-power-of-number"
  role             = "${aws_iam_role.iam_for_lambda.arn}"
  handler          = "index.handler"
  runtime          = "nodejs8.10"
}

resource "aws_lambda_function" "random-number-generator-lambda" {
  filename         = "../random-number-generator-lambda/archive.zip"
  function_name    = "step-functions-sample-random-number-generator"
  role             = "${aws_iam_role.iam_for_lambda.arn}"
  handler          = "index.handler"
  runtime          = "nodejs8.10"
}
