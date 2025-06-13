## Question 4: Simulated User, Group, and Permission Management

Because sudo access is unavailable, this script simulates the creation of users, groups, and ownership changes using echo statements. It still demonstrates the correct understanding of the commands and their structure.

### Simulated commands:
- `useradd user01`, `useradd user02`
- `groupadd groupA`, `groupadd groupB`
- `chown`, `chgrp`, and `chmod` operations
- Recursive permission updates on directories

### Actual commands executed:
- `mkdir`, `touch`, and `chmod` on local directories/files
- `chmod 740 file2`: Gives rwx to user, r to group, none to others
- `chmod g+rw file2`: Adds group write access
- `chmod -R 744 Resources`: Applies recursively to directory

This method allows a safe and reviewable implementation without requiring root privileges.

