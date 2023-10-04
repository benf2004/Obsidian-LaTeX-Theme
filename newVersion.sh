#!/bin/bash

# Check if a version argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <version>"
    exit 1
fi

# Assign the version argument to a variable
version="$1"

# Create a Git tag with the provided version and message
git tag -a "$version" -m "$version"

# Push the tag to the remote repository
git push origin "$version"

echo "Tag '$version' has been created and pushed to the remote repository."
