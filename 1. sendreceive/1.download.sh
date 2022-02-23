#!/bin/bash
todate=$(date --date=yesterday +"%Y-%m-%d")
totime="T17:00:00U"
todate="$todate$totime")
fromdate=$(date -d "$todate -1 week" +"%Y-%m-%d")
fromtime="T17:00:01U"
fromdate="$fromdate$fromtime"
twilio api:core:messages:list --no-limit --properties="sid,from,to,dateCreated,status,direction,price" \
--date-sent-after  $todate \
--date-sent-before $fromdate \
  | while read -r row ; do
    echo "$row" >> data.tsv
  done
