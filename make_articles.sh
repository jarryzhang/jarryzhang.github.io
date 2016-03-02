#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Wrong input!!!"
	echo "the first input is file name"
	echo "the second input is article name"
	exit 0
fi

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
sed '/'$FINDLINE'/i \    <li><a href=\"/articles/'${1}'.html\">'$2'</a></li>' $IDXFILE > $TMPFILE
mv -f $IDXFILE ${IDXFILE}.pre
cp -f $TMPFILE $IDXFILE 

echo "Make article successfully!"
