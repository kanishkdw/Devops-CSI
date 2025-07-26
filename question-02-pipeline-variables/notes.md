# Notes – Week 8 Question 2

## Variable Types in Azure Pipelines
1. **Custom Variables** – Defined by the user in the YAML file
2. **Predefined Variables** – Provided by Azure DevOps like `Build.SourceBranch`, `Build.Reason`, etc.

## Variable Syntax
- Format: `$(variableName)`
- Variables are case-insensitive

## Why Use Them?
- Enable dynamic and reusable configurations
- Centralize values (like environment, branch, path)
- Easy debugging using log output
