#!/bin/bash
set -e

# Get version from argument or use default
VERSION=${1:-"latest"}

# Build CPU image using docker buildx bake
echo "Building CPU image..."
VERSION=$VERSION docker buildx bake --push

echo "Build complete!"
echo "Created image with version: $VERSION"
