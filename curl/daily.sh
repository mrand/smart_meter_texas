# Daily usage example
#       Today's energy isn't available until tomorrow, late afternoon / early evening
#
# Update requestorID and ESIID in this file, and the login and password in the netrc fle
#
# other options to consider adding if it doesn't work for you: --tlsv1.2
#
curl 'https://services.smartmetertexas.net/dailyreads/' \
--netrc-file smart_meter_texas.netrc   \
--header "Accept:application/json"     \
--key    ".cloud/remote_private.pem"   \
--cert   ".cloud/remote_fullchain.pem" \
--insecure                             \
--data ' {
"reportFormat" : "JSON",
"SMTTermsandConditions": "Y",
"version"      : "L",
"trans_id"     : "123",
"startDate"    : "04/27/2020",
"endDate"      : "04/27/2020",
"requesterType": "RES",
"readingType"  : "c",
"requestorID"  : "YOUR_USER_ID_GOES_HERE",
"esiid"        : [ "12345678901234" ]
} '



####
# Reply example
####
#
# Reading at 8am on morning of 04/23/2020 only provides data from two days ago:
#
# {"trans_id":"123","esiid":"107008271234098","registeredReads":[{"readDate":"04\/21\/2020","revisionDate":"04\/22\/2020 07:41:22","startReading":"24002.915","endReading":"24038.915","energyDataKwh":"36.492"}]}
#
#
# This is the response when requesting yesterday's data before it's available 
#
# {"errorCode":"1","errorMessage":"No data received from the respective TDSP"}
