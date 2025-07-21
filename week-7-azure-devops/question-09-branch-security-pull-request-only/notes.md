# Notes – Branch Security and Pull Request Enforcement

## Why?
To enforce review and quality checks by preventing direct commits to the production branch (`main` or `master`) by contributors.

---

## Key Permissions:
| Permission                     | Contributor Setting |
|-------------------------------|---------------------|
| Read                          | Allow               |
| Contribute                    | Deny                |
| Contribute to pull requests   | Allow               |
| Bypass policies when pushing  | Deny                |
| Force push                    | Deny                |

---

## Best Practice
- Allow PR creation for contributors.
- Allow direct push only for maintainers/admins.
- Add branch policies to require code review before merge.

---

## Validation
Try pushing directly from contributor: ❌
Try creating PR from contributor: ✅
