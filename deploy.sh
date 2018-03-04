#!/usr/bin/env bash

set -eu

cd "$(dirname "$0")"
cp .bash_profile ~/.bash_profile
cp .vimrc ~/.vimrc
cp gnupath.sh ~/gnupath.sh
cp .inputrc ~/.inputrc

