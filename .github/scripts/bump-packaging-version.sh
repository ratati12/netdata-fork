#!/bin/sh

VERSION="$(git describe --tags --always)"
echo "$VERSION" > packaging/version
git add -A
git ci -m "[netdata nightly] $VERSION"
