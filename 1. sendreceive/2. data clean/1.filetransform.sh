#!/bin/bash
#what we're doing with this script is using line one to remove the first line of text that has the headers, because this is a database and not a French beach.
#line two converts every instance of more than one space into a tab. which should be unnecessary since this is a tabbed separated values file, but
#you know. sometimes we just get fucked by things.
#speaking of fucked, we're still trying to figure out how in the shit we're supposed to convert the twilio date format into something that mariadb can actually understand
#since right now it's in RFC1123 format and we need it to be not that. 
sed -i '1d' sendreceive.tsv
sed 's/ \+ /\t/g' sendreceive.tsv > sendreceivetabbed.tsv
