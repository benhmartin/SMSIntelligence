UPDATE sendreceive
SET DateCreated = LEFT(DateCreated, LENGTH(DateCreated) -9);
