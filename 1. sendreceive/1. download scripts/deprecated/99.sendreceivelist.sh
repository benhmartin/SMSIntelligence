twilio api:core:messages:list --no-limit --properties="sid,from,to,dateCreated,status,direction,price" \
    --date-sent-after 2021-01-15T01:23:45Z \
    --date-sent-before 2021-01-17T01:23:45Z \
# so, what I think we need to do is write a little utility that will determine the UTC date of "yesterday at noon" and then
# "yesterday at noon minus one week" and plug them into a shell script
  | while read -r row ; do
    echo "$row" >> data.tsv
  done
