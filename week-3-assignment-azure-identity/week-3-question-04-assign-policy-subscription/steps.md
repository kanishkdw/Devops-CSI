## Steps to Create and Assign a Policy at Subscription Level

### 1. Define the Policy Rule
- The rule enforces that all resources must include the `Department` tag.
- JSON file is named `enforce-tag-rule.json`.

### 2. Create the Policy Definition
```bash
az policy definition create \
  --name "enforce-department-tag" \
  --display-name "Enforce Department Tag" \
  --description "This policy ensures that the tag 'Department' is set on all resources." \
  --rules enforce-tag-rule.json \
  --mode All
