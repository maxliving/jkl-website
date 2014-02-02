#!/bin/bash

# Performs the multi-step process of updating my public website once I've made all the changes I want to locally and have pushed the git repo.

# Requires you to have set up your ssh key (see http://www.thegeekstuff.com/2008/11/3-steps-to-perform-ssh-login-without-password-using-ssh-keygen-ssh-copy-id/)

jekyll build

ssh maxlivin@maxlivingston.org "cd gitsite; git pull origin master; cp -r _site/* ../public_html/"


