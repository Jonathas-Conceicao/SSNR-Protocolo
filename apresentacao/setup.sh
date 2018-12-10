#! /bin/bash

if ! [ -x "$(command -v go)" ]; then
	echo 'Error: Go tool is not installed.'
	exit 1
fi

echo -e "Exporting GO variables for 'go get' and 'go install'"
export GOPATH=$PWD/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

echo -e "Getting projects"

go get github.com/Jonathas-Conceicao/ssnrserver/...
go get github.com/Jonathas-Conceicao/ssnrsender/...
go get github.com/Jonathas-Conceicao/ssnrreceiver/...

echo -e "Installing executables on $GOBIN"

go install github.com/Jonathas-Conceicao/ssnrserver
go install github.com/Jonathas-Conceicao/ssnrsender
go install github.com/Jonathas-Conceicao/ssnrreceiver

echo -e "Executables were installed and exported to current PATH"
echo -e "Run '{ssnrserver|ssnrsender|ssnrreciver} help' for syntax"
