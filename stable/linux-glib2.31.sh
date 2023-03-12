#!/bin/bash

HOMEDIR=`eval echo ~`
#HOMEDIR=""

#if [ -z "$1" ]; then
#  HOMEDIR="$1"
#else
#  HOMEDIR=`eval echo ~`
#fi


echo Assuming homedir is $HOMEDIR
echo
echo
echo Making sure unzip is installed
sudo apt install -y unzip
echo
echo
echo
cd $HOMEDIR
echo Downloading the game
echo
echo
wget https://w3g3a5v6.ssl.hwcdn.net/upload2/game/1275314/7461911?GoogleAccessId=uploader@moonscript2.iam.gserviceaccount.com&Expires=1678589164&Signature=bd3wsi68z5ux%2BvZRFmkKlZ2SdR9vNBi%2BD9fgsaMt34XFHWBw9ydXPkTF0iWVsjxBbSrE%2BByTMvjnv2Vl00eYmvmKzMrUVK03NYs4g8gHnxDG%2Fcdkps2%2F3PbtW38AdURrVYwCMcDjyALEzrjDHPpMyi6iRMLYPrbTwd%2BG9n5u2YyPjIis%2FGb%2BXtcMbrIfXU6Ru3K6YmUKA5JN8yFtmAUxscxCeYbCbEEMzhdM7avPNtSJt0eVQYTvy9L0AAeC9mBvWQjdroK38YPwiazvLVjN4zIGcgq%2FgAyLNaBbhe4DC3cCEMp5C0KZFG14WiZIDM3VWwC8XbDh9GqrAU4fdEz04Q==&hwexp=1678589424&hwsig=cf65d516c0bbf19d283234fe76a48b9d -O game.zip
echo
echo
echo
echo Unzipping...
unzip game.zip
echo Unzipping a second time...
tar -xf Clangen_Linux64_glibc2.35+.tar.xz
echo Deleting temporary files
rm game.zip Clangen_Linux64_glibc2.35+.tar.xz

echo If you want to run the game again without redownloading, the command is as follows:
echo $HOMEDIR/Clangen/Clangen
echo Running the game!!!
cd Clangen && ./Clangen