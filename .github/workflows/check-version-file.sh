#!/bin/bash

echo "$1"
echo "$2"

# Validate arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <base_branch> <head_branch>" >&2
    exit 1
fi

BASE_BRANCH="$1"
HEAD_BRANCH="$2"

# Check if version.txt is in the diff
if ! git diff --name-only "$BASE_BRANCH" "$HEAD_BRANCH" | grep -q "version.txt"; then
    echo "Error: version.txt not updated in the diff between $BASE_BRANCH and $HEAD_BRANCH" >&2
    exit 1
fi

echo "Success: version.txt is updated in the diff."
