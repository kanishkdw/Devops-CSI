# Week 7 - Q2 Notes: Restricting Branch Access in Azure DevOps

## 🔹 Objective:
Restrict access to the main/master branch so only **project administrators** can push or approve changes.

---

## 🔹 Why Restrict Master Branch?
- Prevent accidental commits or deletions
- Enforce controlled code merges via Pull Requests
- Maintain production-grade code integrity

---

## 🔹 Contributor Flow:
- Contributors can raise PRs
- Admin is notified and must approve
- Contributors cannot directly push to `main`

---

## 🔹 Branch Policy Best Practices:
- Enforce PR reviews
- Add build validations
- Use approval policies and auto-inclusion of reviewers
- Block force-push and direct commits

---

## 🔹 Key Area:
**Project Settings → Repos → Branches → Branch Policies**
