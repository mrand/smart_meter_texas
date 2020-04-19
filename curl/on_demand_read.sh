#
# This is step 2.  Take the CorrelationID from step 1 and put it below
#
# Update requestorID below.  
#
curl 'https://services.smartmetertexas.net/odrstatus/' \
--netrc-file smart_meter_texas.netrc   \
--header "Accept:application/json"     \
--key    ".cloud/remote_private.pem"   \
--cert   ".cloud/remote_fullchain.pem" \
--insecure                             \
--data ' {
"SMTTermsandConditions":"Y",
"requestorID"  :"YOUR_USER_ID_GOES_HERE",
"trans_id"     :"124",
"reportFormat" :"JSON",
"deliveryMode" :"API",
"correlationId":"123456"
} '

#
# Example response if this is done very quickly after step 1:
#
# {"trans_id":"124","correlationId":"123456","statusCode":"PEN","statusReason":"Request Submitted by API","odrRead":{"registeredRead":0E+0,"readDate":"04\/04\/2020 21:25:34"}}
#
#
# and later:
#
# {"trans_id":"124","correlationId":"123456","statusCode":"0","statusReason":"ODR retreived successfully","odrRead":{"registeredRead":2.3459133E+4,"readDate":"04\/04\/2020 21:26:41"}}
