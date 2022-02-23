# SMSIntelligence
Legal Aid in Connecticut SMS analytics.

We have an SMS platform with a twilio backend that lacked any sort of reporting capabilities. 
so, I decided to make it.
I'm running an Ubuntu 20.04 server with MariaDB handle the DB functions. 
This utility will use the twilio-cli to pull the data down, then use a bunch of nonsense to format it for usability, and dump it into the db. 
