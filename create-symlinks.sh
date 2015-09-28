#!/usr/bin/env bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

rm -rf ~/.bash_old
mkdir ~/.bash_old
mv ~/.bash_bindings ~/.bash_old 2>/dev/null
mv ~/.shell_fxns.sh ~/.bash_old 2>/dev/null
mv ~/.bash_logout ~/.bash_old 2>/dev/null
mv ~/.bash_vars ~/.bash_old 2>/dev/null
mv ~/.bashrc ~/.bash_old 2>/dev/null
mv ~/.jshintrc ~/.bash_old 2>/dev/null
mv ~/.profile ~/.bash_old 2>/dev/null
mv ~/.Xresources ~/.bash_old 2>/dev/null
mv ~/.xsessionrc ~/.bash_old 2>/dev/null

mkdir -p ~/startup.d
mkdir -p ~/perl-bits
touch ~/startup.d/startup.log
mkdir -p ~/.bash_old/startup.d
mkdir -p ~/.bash_old/perl-bits
mv ~/startup.d/misc.sh ~/.bash_old/misc.sh 2>/dev/null
mv ~/perl-bits/basename_sort.pl ~/.bash_old/perl-bits/ 2>/dev/null

ln -s "${DIR}/.bash_bindings" ~/.bash_bindings
ln -s "${DIR}/.shell_fxns.sh" ~/.shell_fxns.sh
ln -s "${DIR}/.bash_logout" ~/.bash_logout
ln -s "${DIR}/.bash_vars" ~/.bash_vars
ln -s "${DIR}/.bashrc" ~/.bashrc
ln -s "${DIR}/.jshintrc" ~/.jshintrc
ln -s "${DIR}/.profile" ~/.profile
ln -s "${DIR}/.Xresources" ~/.Xresources
ln -s "${DIR}/.xsessionrc" ~/.xsessionrc
ln -s "${DIR}/startup.d/misc.sh" ~/startup.d/misc.sh
ln -s "${DIR}/perl-bits/basename_sort.pl" ~/perl-bits/basename_sort.pl

echo "Finished"
