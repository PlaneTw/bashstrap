#!/bin/sh

DIR_PATH=$(pwd)

rm ~/.bash*

ln -s ${DIR_PATH}/.bash_alias ~
ln -s ${DIR_PATH}/.bash_profile ~
ln -s ${DIR_PATH}/.bashrc ~

source ~/.bash_profile
