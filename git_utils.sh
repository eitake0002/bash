#!/bin/sh

function git-log-oneline()
{
  git log --oneline
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
