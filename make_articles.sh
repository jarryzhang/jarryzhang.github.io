#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Wrong input!!!"
	echo "The only input is file name"
	exit 0
fi

read -p "Please input the title:" TITLE
read -p "Are you sure the title is '$TITLE'? " CHOICE

if [ $CHOICE != "y" ]; then
    echo "Please restart the script!"
    exit 0
fi

echo -e "The title is\n$TITLE"

FOLDER=./articles/
MDFILE=${FOLDER}${1}.md
HTMLFILE=${FOLDER}${1}.html
TMPLTFILE=template.html
IDXFILE=index.html
TMPFILE=${FOLDER}tmp.html

if [ ! -f "$MDFILE" ]; then
	echo "File does not exist!!!"
	exit 0
fi

echo "File has been found!"

head -n 30 $TMPLTFILE > $HTMLFILE
markdown $MDFILE | sed 's/^/      /' >> $HTMLFILE
tail -n 13 $TMPLTFILE >> $HTMLFILE

FINDLINE="InsertLink"
sed '/'$FINDLINE'/i \    <li><a href=\"/articles/'${1}'.html\">'"$TITLE"'</a></li>' $IDXFILE > $TMPFILE
mv -f $IDXFILE ${IDXFILE}.pre
cp -f $TMPFILE $IDXFILE 

echo "Make article successfully!"
