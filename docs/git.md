# Git

origin/main : The name of the remote main branch

## Essential commands

```bash
git add -A
git status
git log --oneline
```
## Branching

```bash
# List all branches (inlcuding remotes)
git branch -a

# Create a branch
git branch branch-name

# Switching branch
git switch branch-name

# Creating and switching at the same time
git switch -c branch-name

# Merging to main
git switch main
git merge branch-name

# Deleting branch
# Soft delete
git branch -d branch-name

# Force delete
git branch -D branch-name

# Pulling specific remote branch
git pull origin branch-name

# Pushing local branch to remote
git push origin branch-name

# Delete remote branch
git push origin --delete branch-name

# Checking common commit (ancestor) of two branches
git merge-base branch-A branch-B
```

## Undoing last commit

```bash
# Keeping changes staged
git reset --soft HEAD~1

# Unstaging changes
git reset --mixed HEAD~1

# Discarding (deleting) changes 
git reset --hard HEAD~1
```

## Changing last commit message

**Warning**: Before doing this make sure nobody
pulled the commit, or you are working in the branch
alone.

### If the commit is already pushed:


```bash
git commit --amend
git push --force
```
### If the commit isn't pushed:

```bash
git commit --amend
git push 
```
