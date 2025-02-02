#!/usr/bin/env bash
set -e

GIT_COMMITTER_DATE="2021-01-23 01:23:45" git commit --allow-empty -m "feat: add feature 1"
git tag v0.1.0

GIT_COMMITTER_DATE="2021-01-23 01:23:46" git commit --allow-empty -m "feat: add feature 2"
git tag v0.2.0

git checkout v0.1.0
GIT_COMMITTER_DATE="2021-01-23 01:23:47" git commit --allow-empty -m "feat: fix feature 1"
git tag v0.1.1
