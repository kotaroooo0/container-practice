resource "aws_iam_user_policy_attachment" "deploy-attach" {
    user = aws_iam_user.deploy-user.name
    policy_arn = aws_iam_policy.deploy.arn
}

resource "aws_iam_role_policy_attachment" "ecs_task_role_attach" {
    role = aws_iam_role.ecs_task_role.name
    policy_arn = aws_iam_policy.ecs_task_policy.arn
}
