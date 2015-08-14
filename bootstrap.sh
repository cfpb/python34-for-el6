#!/usr/bin/env bash

sudo yum -y groupinstall 'Development Tools'
sudo yum -y install zlib-devel bzip2-devel openssl-devel sqlite-devel
SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

if [ "$SCRIPTPATH" = "/tmp" ] ; then
	SCRIPTPATH=/vagrant
fi

mkdir -p $HOME/rpmbuild/{BUILD,RPMS,SOURCES,SRPMS}
ln -sf $SCRIPTPATH/SPECS $HOME/rpmbuild/SPECS
echo '%_topdir '$HOME'/rpmbuild' > $HOME/.rpmmacros
cd $HOME/rpmbuild/SOURCES
wget --quiet https://www.python.org/ftp/python/3.4.3/Python-3.4.3.tar.xz
