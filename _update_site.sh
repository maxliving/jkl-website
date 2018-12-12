#!/bin/bash

set -euox pipefail

# Performs the multi-step process of updating my public website once I've made all the changes I want to locally.

# Requires you to have set up your ssh key (see http://www.thegeekstuff.com/2008/11/3-steps-to-perform-ssh-login-without-password-using-ssh-keygen-ssh-copy-id/)

# Build first, b/c we need to generate the site files before git pushing.
jekyll build

# Commit the site files that we just generated
git commit --allow-empty -am  "Auto-commit for site files"

# Push
git push

ssh maxlivin@maxlivingston.org "cd gitsite; git pull origin master; cp -r _site/* ../public_html/"


