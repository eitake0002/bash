#!/bin/sh

# Set git user.name
function git-set-username()
{
  git config --global user.name "$1"
}

# Set git user.email
function git-set-email()
{
  git config --global user.email "$2"
}

# Show config list
function git-config-list()
{
  git config --list
}

# Show git log oneliner
function git-log-oneline()
{
  git log --oneline
}

# Show log details
function git-log-detail()
{
  git log --stat
}

# Show diff place
function git-log-diff()
{
  git log -p
}

function git-status()
{
  git status
}

function git-diff()
{
  git diff
}

function git-diff-staging()
{
  git diff --cached
}

function check-remote-url()
{
  git remote -v
}

function set-remote-url()
{
  # git remote set-url origin git@github.com:eitake0002/bash.git
  git remote set-url origin $1
}

# Reset.
function git-reset-hard()
{
  git reset --hard HEAD
}

# Reset to before
function git-reset-hard-before()
{
  git reset --hard HEAD^
}

# Reset to ID.
function git-reset-hard-id()
{
  git reset --hard $1
}
