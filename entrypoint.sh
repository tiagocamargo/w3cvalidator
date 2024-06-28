URL=$1
LEVEL=${2:-"error"}
HOST=${3:-"https://validator.w3.org/nu/"}

RESULT=$(curl -sS -L -X GET ''"$HOST"'?doc='"$URL"'&out=json&level='"$LEVEL"'' | jq -r )

echo $RESULT
