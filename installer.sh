#!/bin/sh
# Determine release candidate
case $(uname -s) in
	"Darwin") FILE="expenv_darwin_amd64";;
	"Linux") FILE="expenv_linux_amd64";;
	*) echo "No install candidate available" && exit 1;;
esac

echo "Downloading expenv"
# Abuse svn export to download the binary
cd ~/ && svn export https://github.com/TheWolfNL/expenv/trunk/bin/$FILE ~/expenv > /dev/null
chmod +x ~/expenv

echo "Installing expenv"
mv ~/expenv /usr/local/bin/expenv

# Check if install was succesfull
if [ ! "$(which expenv)" ];
then
    echo "expenv could not be installed successfully"
else
    echo "expenv installed successfully"
fi