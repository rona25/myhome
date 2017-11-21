#!/usr/bin/env bash
set -o errexit
set -o pipefail

BIN_DIR=~/bin
GIT=git
PROJECT_DIR=$(cd .. && pwd)

which ${GIT} > /dev/null

mkdir -p ${BIN_DIR} && cd $_

# git aware prompt
if [ ! -d ${BIN_DIR}/git-aware-prompt ] ; then
    ${GIT} clone https://github.com/jimeh/git-aware-prompt.git
fi


# .bash_profile
if [ ! -f ~/.bash_profile ] ; then
    ln -s \
        ${PROJECT_DIR}/dotfiles/mac/bash_profile \
        ~/.bash_profile
fi


# .bashrc
if [ ! -f ~/.bashrc ] ; then
    ln -s \
        ${PROJECT_DIR}/dotfiles/mac/bashrc \
        ~/.bashrc
fi


# .bash_aliases
if [ ! -f ~/.bash_aliases ] ; then
    ln -s \
        ${PROJECT_DIR}/dotfiles/mac/bash_aliases \
        ~/.bash_aliases
fi

