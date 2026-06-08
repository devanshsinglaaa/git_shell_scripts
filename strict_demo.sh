#!/bin/bash

set -euo pipefail

echo "Starting script..."

# Undefined variable (will break due to -u)
echo $name

# Command failure (will break due to -e)
ls /nonexistent

# Pipe failure (will break due to pipefail)
cat file.txt | grep "hello"

echo "This will not run"
