## Question 7: Setup a Local Remote Repository and Push to Master

This task demonstrates how to simulate a remote Git workflow using only local directories.

### Key Steps:

- `git init --bare`: Creates a remote-like repository that stores data only (no working directory).
- `git init`: Initializes a local Git repo.
- `git remote add origin`: Adds the local bare repo as the remote.
- `git branch -M master`: Ensures we're on the master branch.
- `git push origin master`: Pushes changes to the master branch of the remote repo.

This exercise simulates real-world Git collaboration without needing GitHub or a network connection. It’s especially useful for practicing Git flow in offline/local-only setups.
