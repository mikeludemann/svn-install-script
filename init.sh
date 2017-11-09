#!/bin/bash

echo "Checking svn"

if svn --version > /dev/null; then
  echo "svn is already installed."
else
  echo "installing svn."
  echo "operation system package manager check"
  if yum -v > /dev/null; then
    echo "installing git with yum"
    yum install subversion
    yum install mod_dav_svn
  else
    echo "yum is not installed"
  fi
  if apt-get -V > /dev/null; then
    echo "installing svn with apt-get"
    sudo apt-get install subversion
    sudo apt-get install libapache2-mod-svn
  else
    echo "apt-get is not installed"
  fi
  if zypper -v > /dev/null; then
    echo "installing svn with apt-get"
    sudo zypper install subversion
    sudo zypper install subversion-server
  else
    echo "apt-get is not installed"
  fi
  if port version > /dev/null; then
    echo "installing svn with port"
    sudo port install subversion
  else
    echo "port is not installed"
  fi
  if brew --version > /dev/null; then
    echo "installing svn with brew"
    brew install svn
  else
    echo "brew is not installed"
  fi
fi
