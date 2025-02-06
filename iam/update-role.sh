aws iam put-role-policy --role-name GitHubActionsRole \
  --policy-name GitHubActionsPolicy \
  --policy-document file://permission-policy.json \
  --no-cli-pager \
  --output json