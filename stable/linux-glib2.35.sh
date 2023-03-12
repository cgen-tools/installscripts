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
wget https://w3g3a5v6.ssl.hwcdn.net/upload2/game/1275314/7461912?GoogleAccessId=uploader@moonscript2.iam.gserviceaccount.com&Expires=1678589036&Signature=odta9h24r3sJp%2FhqnjoUM6nFSTUN7WJah2H9wGe2diUz1EFkWXGzK2hTA8m0QdgkPOW0CGU9ERst1QuuFKZv3%2BsTKGhO6QA5tTfKtDWr1a0KhnnNsM5sYn0yGoc2nEtLQ3U86QuPu00S7AdCHgxcVB%2Fd%2FGZGrJNafRDYKGNDiF7cmtwdYZNO2VkfLNnXWjezcgK0Zu%2FsbwX%2B333x%2BZsxmnFn%2BgLWbFz6%2Bn6%2FF3O5XRtt%2BtDmNhzjrGTRoyjUCUKrwcJy7%2FmKrKNyIkUPnMVv3U5ymO1YihYbvJ7lEVGbctcxff1DoMXTD32Jx3T8hO5PwRE9Sf6DDkFsmgc1TP1XIg==&hwexp=1678589296&hwsig=ad8c25ff1a3110086b8e8a00d2438182 -O game.zip
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