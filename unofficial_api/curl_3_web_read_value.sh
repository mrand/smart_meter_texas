#
# Pre-configure below with at least your ESIID
# MeterNumber is NOT required, nor is it checked (you can enter a bogus number), at least
#          if you only have one meter.  Unknown if it helps when you have multiple meters
#
# Usage:
#    3_web_read_value <really_long_token_without_quotes>
#
#
#
curl 'https://smartmetertexas.com/api/usage/latestodrread' \
--insecure                                    \
--header "Accept:application/json"            \
--header "Content-Type: application/json"     \
--header "Authorization: Bearer $1"           \
--data ' { "ESIID"     : "YOUR_ESIID_GOES_HERE",
          "MeterNumber": "OPTIONAL_METER_NUMBER_GOES_HERE" } '

#
# Example response:
#
# {"data":{"odrstatus":"COMPLETED","odrread":"12345.789","odrusage":"55.555","odrdate":"05/16/2020 16:08:23","responseMessage":"SUCCESS"}}
#
# or if it isn't ready yet:
# {"data":{"odrstatus":"PENDING","odrread":"0","odrusage":"0","odrdate":"05/16/2020 17:16:40","responseMessage":"SUCCESS"}}
