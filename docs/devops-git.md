# Git

origin/main : The name of the remote main branch

## Essential commands

```bash
git add -A
git status
git log --oneline
git branch -a

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
