#!/bin/bash
set -e

USER="andre"
HOST="vsgate-ssh.dei.isep.ipp.pt"
PORT="10323"
IDENTITY="$HOME/.ssh/debian_main"

REMOTE_PATH="/home/andre/goserver/static/notes"
STATIC_CSS_PATH="/home/andre/goserver/static/style.css"

SSH_CMD="ssh -i $IDENTITY -p $PORT $USER@$HOST"
SCP_CMD="scp -i $IDENTITY -P $PORT"

echo "Copying docs/ to remote server..."
$SCP_CMD -r markdown_notes/* "$USER@$HOST:$REMOTE_PATH/"

echo "SSH into remote to build notes and restart server..."
$SSH_CMD << 'EOF'
set -e

echo "Killing existing goserver..."
sudo kill $(pgrep goserver) || echo "goserver not running"

echo "Converting Markdown to HTML..."
cd /home/andre/goserver/static/notes

find . -name "*.md" | while read -r f; do
  html_file="${f%.md}.html"
  pandoc "$f" -o "$html_file" --css=/home/andre/goserver/static/style.css -s
done

echo "Cleaning up Markdown files..."
find . -type f -name "*.md" -delete

echo "Building new goserver binary..."
cd /home/andre/goserver
CGO_ENABLED=0 go build -o goserver

echo "Restarting goserver..."
sudo ./goserver &
EOF

echo "✅ Deploy complete."
