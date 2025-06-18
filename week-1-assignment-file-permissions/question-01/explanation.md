## Question 1: File Creation and Permission Handling

### Task:
- Create a file and assign read, write, execute permissions to owner, group, and others.
- Practice changing permissions using `chmod`.

### What the script does:
1. Creates a file `myfile.txt`.
2. Uses `chmod 754` to:
   - Grant owner: **read, write, execute**
   - Group: **read, execute**
   - Others: **read**
3. Uses symbolic `chmod`:
   - `chmod g-w` → removes write from group
   - `chmod o+x` → adds execute to others
4. Displays permission changes using `ls -l`.

This demonstrates both numeric and symbolic permission handling in Linux using `chmod`.
