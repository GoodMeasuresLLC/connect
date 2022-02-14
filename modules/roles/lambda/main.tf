resource "aws_iam_role" "lambda_role" {
  name = var.lambda_role_name

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": [
          "lambda.amazonaws.com",
          "apigateway.amazonaws.com",
          "es.amazonaws.com",
          "lex.amazonaws.com"
        ]
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

# logging policy
resource "aws_iam_policy" "lambda_logging" {
  name = "lambda_logging_${var.tags["environment"]}"
  path = "/"
  description = "IAM policy for logging from lambda"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Resource": "arn:aws:logs:*:*:*",
      "Effect": "Allow"
    }
  ]
}
EOF
}
resource "aws_iam_role_policy_attachment" "lambda_logs" {
  role = aws_iam_role.lambda_role.name
  policy_arn = aws_iam_policy.lambda_logging.arn
}


# search policy
resource "aws_iam_policy" "lambda_search" {
  name = "lambda_search_${var.tags["environment"]}"
  path = "/"
  description = "IAM policy for elasticsearch from lambda"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "es:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}
resource "aws_iam_role_policy_attachment" "lambda_search" {
  role = aws_iam_role.lambda_role.name
  policy_arn = aws_iam_policy.lambda_search.arn
}


# network policy
resource "aws_iam_policy" "lambda_network" {
  name = "lambda_network_${var.tags["environment"]}"
  path = "/"
  description = "IAM policy for network access rules from lambda"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:DescribeSecurityGroups",
        "ec2:DescribeSubnets",
        "ec2:DescribeVpcs",
        "ec2:CreateNetworkInterface",
        "ec2:DescribeNetworkInterfaces",
        "ec2:DeleteNetworkInterface",
        "ec2:DescribeInstances",
        "ec2:AttachNetworkInterface"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}
resource "aws_iam_role_policy_attachment" "lambda_network" {
  role = aws_iam_role.lambda_role.name
  policy_arn = aws_iam_policy.lambda_network.arn
}

