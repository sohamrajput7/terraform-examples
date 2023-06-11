# values are all the outputs for that resource.
output "all_users" {
  value = aws_iam_user.example
}

# values are all the arns for that resource.
output "all_arns" {
  value = values(aws_iam_user.example)[*].arn
}