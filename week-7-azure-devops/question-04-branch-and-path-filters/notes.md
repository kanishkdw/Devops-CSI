# Notes – Branch Filters and Path Filters in Azure DevOps

## Branch Filters
- Controls **which branches** a build policy applies to.
- Useful for applying different policies to feature vs. release branches.

## Path Filters
- Controls **which files/folders** trigger the build pipeline or branch policy.
- Helps in reducing unnecessary builds (e.g., skip build if only docs changed).

## Use Cases:
- Only run CI for changes in `/src/`.
- Prevent PR merges unless certain paths are tested.
- Apply different checks for `main` vs. `dev` branches.
