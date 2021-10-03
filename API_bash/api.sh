#!/usr/bin/env bash

#VARS
HEADER_CONTENT_TYPE="Content-Type: application/xml"
HEADER_ACCEPT="Accept: application/xml"
USER="$1"
PASSWD="$2"

#TIME_D=`date +"%Y%m%d"`
TIME_D=`date +"%Y%m%d_%H%M%S"`
LOG_DIR="."
LOG_FILE="${LOG_DIR}/${TIME_D}.log"

function getUrl {
  local URL="$1"
  echo "Calling URI (GET): $URL"
  ( curl -X GET -H "$HEADER_CONTENT_TYPE" -u "$USER:$PASSWD" $URL ) 2>&1 | tee
}
function postUrl {}
