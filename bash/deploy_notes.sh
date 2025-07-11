#!/bin/bash
set -e

# Remote server connection info
USER="andre"
HOST="vsgate-ssh.dei.isep.ipp.pt"
PORT="10323"
IDENTITY="$HOME/.ssh/debian_main"

REMOTE_PATH="/home/andre/goserver/static/notes"
STATIC_CSS_PATH="/home/andre/goserver/static/style.css"

# Absolute SSH and SCP commands
SSH_CMD="ssh -i $IDENTITY -p $PORT $USER@$HOST"
SCP_CMD="scp -i $IDENTITY -P $PORT"

echo "Copying docs/ to remote server..."
$SCP_CMD -r docs/* "$USER@$HOST:$REMOTE_PATH/"

echo "SSH into remote to build notes and restart server..."
$SSH_CMD bash -c "'
  set -e

  echo \"Killing existing goserver...\"
  sudo kill \$(pgrep goserver) || echo \"goserver not running\"

  echo \"Converting Markdown to HTML...\"
  cd $REMOTE_PATH
  for f in *.md; do
    pandoc \"\$f\" -o \"\${f%.md}.html\" --css=$STATIC_CSS_PATH -s
  done

  echo \"Cleaning up Markdown files...\"
  rm -f *.md

  echo \"Building new goserver binary...\"
  cd /home/andre/goserver
  CGO_ENABLED=0 go build -o goserver

  echo \"Restarting goserver...\"
  sudo ./goserver &
'"
echo "✅ Deploy complete."
