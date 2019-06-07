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
if [ ! -e {$WORK_DIR}mac-provision ]; then
  git clone https://github.com/hagetak/mac-provision.git
fi

echo 'export HOMEBREW_CASK_OPTS="--appdir=/Applications"' >> ~/.bash_profile
HOMEBREW_CASK_OPTS="--appdir=/Applications"

cd "${WORK_DIR}mac-provision"
ansible-playbook -i hosts -vv development.yml
