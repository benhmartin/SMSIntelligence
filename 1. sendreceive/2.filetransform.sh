#!/bin/bash
#what we're doing with this script is using line one to remove the first line
#of text that has the headers, because this is a database and not a French beach.
#line two converts every instance of more than one space into a tab. which
#should be unnecessary since this is a tabbed separated values file, but here we are
sed -i '1d' sendreceive.tsv
sed 's/ \+ /\t/g' sendreceive.tsv > sendreceivetabbed.tsv
