#!/bin/bash

# Create a policy definition that enforces a 'Department' tag on all resources
az policy definition create \
  --name "enforce-department-tag" \
  --display-name "Enforce Department Tag" \
  --description "This policy ensures that the tag 'Department' is set on all resources." \
  --rules enforce-tag-rule.json \
  --mode All

# Assign the policy at subscription level
az policy assignment create \
  --name "enforce-department-tag" \
  --policy "enforce-department-tag" \
  --scope "/subscriptions/<your-subscription-id>"

