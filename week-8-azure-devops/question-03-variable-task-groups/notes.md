
---

### 🧾 `notes.md` (Concept Summary)

```md
# Concepts Used

## Variable Groups
- Central place to define variables shared across pipelines.
- Created from Pipelines → Library.

## Task Groups
- Bundle of multiple tasks.
- Useful for reusability and consistency across pipelines.

## Stage-Specific Variables
- Defined inside specific stages.
- Helps in customizing logic or configs based on the environment.

Example:
```yaml
variables:
  - group: MySharedVars

stages:
- stage: Test
  variables:
    testEnv: true
