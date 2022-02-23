twilio api:core:messages:list --no-limit --properties="sid,from,to,dateCreated,status,direction,price" \
  | while read -r row ; do
    echo "$row" >> data.tsv
  done