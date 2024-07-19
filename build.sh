#!/usr/bin/env bash
set -o errexit   # abort on nonzero exitstatus
set -o nounset   # abort on unbound variable
set -o pipefail  # don't hide errors within pipes
set -x           # show each statement

# Make sure we have updated self sources

if [ -d "self" ] then
  pushd self
  git pull
  popd
else
  git clone https://github.com/russellallen/self.git
fi

# Build master branch

pushd self
git checkout master
tags = ($(git tag))
for tag in "$(tags[@])"; do
  echo "Processing tag: $tag"
done
popd

# Build dev branch



