/* alright, motherfuckers, here is where we are at. I think that the reasonable thing to do is bring the data in as VarChar
/* and then convert it to a date after the fact. It's the only logical conclustion at present.
okay. so what we did was trim the GMT offset with a LEFT command ,create a new column called UsableDate,
and then use the STR_TO_DATE function to pump the good shit into the appropriate locaiton.
*/
UPDATE sendreceive
SET UsableDate = STR_TO_DATE( DateCreated, '%b %d %Y %T')
WHERE usabledate = NULL;
