#!/bin/bash
# https://github.com/ropensci/drat/blob/gh-pages/git_deploy.sh

set -o errexit -o nounset

addToDrat(){
  PKG_REPO=$PWD

  mkdir $HOME/drat
  cd $HOME/drat

  git config --global user.email 'oliver.elliott@ft.com' && git config --global user.name 'Oli Elliott'
  git clone git@github.com:Financial-Times/FTRAN.git

  cd FTRAN

  Rscript -e "drat::insertPackage('$PKG_REPO/$PKG_TARBALL', \
    repodir = '.', \
    commit='CircleCI update: build $CIRCLE_BUILD_NUMBER')"

  git push 2> /tmp/err.txt

}

addToDrat
