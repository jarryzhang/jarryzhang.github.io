#！/bin/bash

FOLDER=./articles/
HTMLFILE=${FOLDER}${1}.html
MDFILE=${FOLDER}${1}.md
TMPLTFILE=template.html

if [ ! -f "$MDFILE" ]; then
	echo "File does not exist!!!"
	exit 0
fi

echo "File has been found!"

head -n 30 $TMPLTFILE > $HTMLFILE
markdown2 $MDFILE | sed 's/^/      /' >> $HTMLFILE
tail -n 13 $TMPLTFILE >> $HTMLFILE

echo "Update article successfully!"

git add $HTMLFILE
git add $MDFILE
