#!/bin/bash

HOMEDIR=""

if [ -z "$1" ] then
  HOMEDIR="$1"
else
  HOMEDIR=`eval echo ~`
fi


echo Assuming homedir is $HOMEDIR


echo Making sure unzip is installed
sudo apt install -y unzip

cd $HOMEDIR
echo Downloading the game


wget https://nightly.link/Thlumyn/clangen/workflows/build/development/Clangen_Linux64_glibc2.31%2B.tar.xz.zip
echo Unzipping...
unzip Clangen_Linux64_glibc2.31+.tar.xz.zip
echo Unzipping a second time...
tar -xf Clangen_Linux64_glibc2.31+.tar.xz
echo Deleting temporary files
rm Clangen_Linux64_glibc2.31+.tar.xz.zip Clangen_Linux64_glibc2.31+.tar.xz

echo If you want to run the game again without redownloading, the command is as follows:
echo $HOMEDIR/Clangen/Clangen
echo Running the game!!!
cd Clangen && ./Clangen
