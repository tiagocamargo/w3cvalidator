#!/bin/bash

URL=$1
LEVEL=${2:-"error"}
HOST=${3:-"https://validator.w3.org/nu/"}


RESULT=`curl -L -X GET ''"$HOST"'?doc='"$URL"'/&out=json&level='"$LEVEL"'' | jq -r '.messages' | jq length`

echo "::set-output name=count::$RESULT"

if [ $RESULT -gt 0 ]; then
	exit 1
else
	exit 0
fi
