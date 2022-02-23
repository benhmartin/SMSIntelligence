/* here we change the price column to varchar(8) so we can import
the price including the null values. maybe I can combine this, but I don't know*/
alter table sendreceive modify price VARCHAR(8);
/*here we take the data from the downloaded file and dump it into the DB.
I need to find a way to generalize this. or maybe put the whole thing into the git proj*/
LOAD DATA INFILE '/sms/sendreceivetabbed.tsv' INTO TABLE smsintelligence.sendreceive FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n';
/*this step changes the price to 0.0 from failed where the status of the messages
was failed */
update sendreceive
set price = 0.0
WHERE MSGStuats ="failed";
/*this one's obvious. we're making the Price a decimal again so we can do math on it later*/
alter table sendreceive modify Price decimal;
/*this is ugly. we're pulling the GMT offset from the "time" that comes from twilio.
there's probably a better way, but I didn't care to figure it out*/
UPDATE sendreceive
SET DateCreated = LEFT(DateCreated, LENGTH(DateCreated) -9);
/*this step grabs the bad date from twilio and converts it to a datetime in another column
but only if we haven't already done so. ::taps finger to side of heada few times::*/
UPDATE sendreceive
SET UsableDate = STR_TO_DATE( DateCreated, '%b %d %Y %T')
WHERE usabledate = NULL;
