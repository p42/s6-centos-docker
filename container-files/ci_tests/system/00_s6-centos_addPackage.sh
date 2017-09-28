#!/usr/bin/env sh

#Make sure packages can be installed
yum -y install epel-release
yum list installed epel-release
if [ $? -ne 0 ]; then
  echo "TEST: installation of epel-release FAILED"
  exit 1
fi

yum -y install fortune-mod cowsay
yum list installed cowsay
if [ $? -ne 0 ]; then
  echo "TEST: installation of cowsay FAILED"
  exit 1
fi

fortune | cowsay -n
if [ $? -ne 0 ]; then
  echo "TEST: really.. you got this far a cowsay FAILED"
  exit 1
fi

exit 0
