UPDATE sendreceive
SET UsableDate = STR_TO_DATE( DateCreated, '%b %d %Y %T')
WHERE usabledate = NULL;
