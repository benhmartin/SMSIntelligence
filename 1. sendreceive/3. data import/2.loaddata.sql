/* here's the issue, we need to come up with a way to handle *valid* null values in the price field.
the issue is that failed messages have a null cost. So, my inclination is to write a thing that will
loop through status, and if it finds a "failed" response, change price from "null" to "0.0"
yeah. I fixed this. the solution was simpler than I thought. we're changing the column
before import to a varchar(8), then bringing data in, then doing a table UPDATE to fix the null values on failed messages
THEN we change it all back. kachow*/

LOAD DATA INFILE '/sms/sendreceivetabbed.tsv' INTO TABLE smsintelligence.sendreceive FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n';
