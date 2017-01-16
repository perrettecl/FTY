#!/bin/sh

# Initially fetch or subsequently update the components
# referred to as "git submodule"'s

# See also
# https://git-scm.com/book/en/v2/Git-Tools-Submodules
# http://stackoverflow.com/questions/5828324/update-git-submodule-to-latest-commit-on-origin
# http://stackoverflow.com/questions/1979167/git-submodule-update/1979194#1979194

# Update dispatcher repo
git pull --all

# Update component repos
# git submodule init --recursive && \
git submodule update --recursive --remote --merge && \
git submodule sync --recursive && \
git status -s
