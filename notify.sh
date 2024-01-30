#!/bin/bash

# generate data
DATE=`TZ=Europe/Berlin date +"%d.%m.%Y"`
TIME=`TZ=Europe/Berlin date +"%H:%M"`

# read template
JSON_TEMPLATE=`cat $GITHUB_ACTION_PATH/template.json`

# generate json
printf -v JSON "$JSON_TEMPLATE" "$STATUS" "$TITLE" "$ENV" "$APPLICATION" "$VERSION" "$GITHUB_ACTOR" "$GITHUB_ACTOR" "$DATE" "$TIME"

# send notification
curl --location "$WEBHOOK" --header "Content-Type: application/json" --data "$JSON"
