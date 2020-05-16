# 
# This is step 1 for making an "On demand" meter read request from Smart Meter Texas
#
# It's a waste to do this more than twice an hour
# 
# This uses smart_meter_texas.netrc file for a little bit of security rather
# than putting the account password on the command line for other users to see
#
# Update requestorID and ESIID in this file, and the login and password in the netrc fle
#
# original source: https://github.com/mrand/smart_meter_texas/
#
curl 'https://services.smartmetertexas.net/odr/' \
--netrc-file smart_meter_texas.netrc   \
--header "Accept:application/json"     \
--key    ".cloud/remote_private.pem"   \
--cert   ".cloud/remote_fullchain.pem" \
--insecure                             \
--data ' {
"SMTTermsandConditions": "Y",
"trans_id"     : "123",
"requesterType": "RES",
"reportFormat" : "JSON",
"deliveryMode" : "API",
"requestorID"  : "YOUR_USER_ID_GOES_HERE",
"ESIID"        : "10222222222222201"
} '

# successful call returns this:
#
#  {"trans_id":"123","correlationId":"123456","statusCode":"0","statusReason":"Request submitted successfully for further processing"}
#
#
# For step 2, use the correlationID from this result to make a read request after waiting a minute
