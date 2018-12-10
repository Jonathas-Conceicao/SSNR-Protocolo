#! /bin/bash

shopt -s extglob

GOPATH=$PWD/go
GOBIN=$GOPATH/bin

echo -e "Cleanning Everything"
rm -rf go/src/!(.gitkeep|.|..)
rm -rf go/pkg/!(.gitkeep|.|..)
rm -rf go/bin/!(.gitkeep|.|..)
echo -e "All is clean"
