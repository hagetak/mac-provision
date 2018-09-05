#!/usr/bin/sh

# set workdir
WORK_DIR=~/Work/sources/
mkdir -p $WORK_DIR

# install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew install ansible
brew install git

cd $WORK_DIR
git clone https://github.com/hagetak/mac-provisioning.git

echo 'export HOMEBREW_CASK_OPTS="--appdir=/Applications"' >> ~/.bash_profile
source ~/.bash_profile

cd $WORK_DIR/mac-provisioning
ansible-playbook -i hosts -vv development.yml
