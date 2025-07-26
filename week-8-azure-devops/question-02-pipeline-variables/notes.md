
---

### ✅ `notes.md`
```md
# Notes – Pipeline Variables in Azure DevOps

## Types of Variables
- **YAML-defined variables**: Declared in pipeline YAML file.
- **Runtime variables**: Set when starting a pipeline manually.
- **Library variables**: Created in "Library" under "Pipelines" as variable groups.

## Syntax
- Referenced using: `$(variableName)` or `variables['variableName']` (for expressions)

## Security
- Secrets should be stored as secure variables or in Key Vault

## Use Cases
- Environment-specific configuration
- Conditional steps
- Reusability across stages or templates
