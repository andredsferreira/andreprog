# Git

origin/main : The name of the remote main branch

## Configuring user for specific repo (on github)

```bash
git config user.name "Your Name"
git config user.email "your.github.email@gitprovider.com"
```

## Essential commands

```bash
# Stage all
git add *

# Unstage all
git restore * --staged

# View differences 
git diff
git diff /path/to/file
git diff --staged

git status
git log --oneline
git log -n 10 --oneline


```

## Commits  

### Changing last commit

**WARNING**: Before doing this make sure nobody
pulled the commit, or you are working in the branch
alone.

If the commit is already pushed:

```bash
git commit --amend
git push --force
```
If the commit isn't pushed:

```bash
git commit --amend
git push 
```

### Undoing last N commits

```bash
# Keeping changes staged
git reset --soft HEAD~N

# Unstaging changes
git reset --mixed HEAD~N

# Discarding (deleting) changes 
git reset --hard HEAD~N
```
If the commits are pushed you can rewrite the history by running this the bellow command.

```bash
git push --force
```

**WARNING**: Make sure nobody pulled the commits. It is generally safer to this in a branch only you have access!

## Git Aliases

Creating alias "git br" for "git branch":

```bash
git config --global alias.br branch
```

Custom commands:

```bash
# Alias for showing the last 10 commits

git config --global alias.lc "log -n 10 --oneline"
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


