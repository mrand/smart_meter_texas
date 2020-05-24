#
# Pre-configure below with at least your ESIID (or alter script to pull it from the command line)
#
# MeterNumber is NOT required, nor is it checked (you can enter a bogus number), at least
#          if you only have one meter.  Unknown if it helps when you have multiple meters
#
# Usage:
#    2_web_read_req <really_long_token_without_quotes>
#
#
curl 'https://smartmetertexas.com/api/ondemandread' \
--insecure \
--header 'Content-Type: application/json' \
--header "Accept:application/json" \
--header "Authorization: Bearer $1" \
--data ' { "ESIID": "PUT_YOUR_ESIID_RIGHT_HERE", "MeterNumber": "OPTIONALLY_PUT_YOUR_METER_NUMBER_HERE" } '

#
# Typical response from smart meter texas:
#
# {"data":{"trans_id":"3","correlationId":"666666","statusCode":"0","statusReason":"Request submitted successfully for further processing"}}
