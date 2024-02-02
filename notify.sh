#!/bin/bash

# generate data
DATE=`TZ=Europe/Berlin date +"%d.%m.%Y"`
TIME=`TZ=Europe/Berlin date +"%H:%M"`

# read template
JSON_TEMPLATE=`cat $GITHUB_ACTION_PATH/template.json`

# remove any quotes from the status value
STATUS=`echo "$STATUS" | tr -d '"'`

# generate json
printf -v JSON "$JSON_TEMPLATE" "$TITLE" "$STATUS" "$ENV" "$APPLICATION" "$VERSION" "$GITHUB_ACTOR"

# send notification
curl --location "$WEBHOOK" --header "Content-Type: application/json" --data "$JSON"
