#
# update below with your smartmetertexas.com username and password
#
# Just execute this script once per hour or two to retreive a token, which
# can then be used to request a meter read
#
#
curl 'https://smartmetertexas.com/api/user/authenticate' \
--header 'Content-Type: application/json' \
--header "Accept:application/json"        \
--insecure                                \
--data ' { "rememberMe": "true", "username"  : "YOUR_LOGIN_USERNAME_GOES_HERE", "password"  : "YOUR_LOGIN_PASSWORD_GOES_HERE" } '

#
# typical JSON response from smart meter texas:
#
# {"usr_id":"YOUR_USERNAME","is_rgstrd":"Y","usr_type":"RES","usr_frst_nm":"YOUR_FIRST_NAME_WILL_APPEAR_HERE","usr_lst_nm":"YOUR_LAST_NAME_APPEARS_HERE","usr_eml":"YOUR_EMAIL@.COM","lang_pref":"en","ai":"N","smtStatus":"active","smtStatuskey":"SMTPR_smtStatus","token":"THIS_IS_LONG_TOKEN"}
