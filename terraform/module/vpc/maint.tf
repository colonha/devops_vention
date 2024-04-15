resource "aws_iam_group" "group_readonly" {
  name = "ReadOnlyGroup"
}

resource "aws_iam_policy" "deny_iam_billing" {
  name        = "DenyIAMandBilling"
  description = "Deny access to IAM and Billing"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Deny",
      "Action": [
        "iam:*",
        "aws-portal:*"
      ],
      "Resource": "*"
    }
  ]
}
EOF
}

resource "aws_iam_group_policy_attachment" "attach_readonly" {
  group      = aws_iam_group.group_readonly.name
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}

resource "aws_iam_group_policy_attachment" "attach_deny_iam_billing" {
  group      = aws_iam_group.group_readonly.name
  policy_arn = aws_iam_policy.deny_iam_billing.arn
}
