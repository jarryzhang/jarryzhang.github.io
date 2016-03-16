#！/bin/bash

FOLDER=./articles/
HTMLFILE=${FOLDER}${1}.html
MDFILE=${FOLDER}${1}.md

if [ ! -f "$HTMLFILE" ]; then
	echo "File does not exist!!!"
	exit 0
fi

echo "File has been found!"

head -n 30 $TMPLTFILE > $HTMLFILE
markdown $MDFILE | sed 's/^/      /' >> $HTMLFILE
tail -n 13 $TMPLTFILE >> $HTMLFILE

echo "Update article successfully!"
