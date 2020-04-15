# smart_meter_texas
In December 2019, Smart Meter Texas (SMT) introduced their "2.0" with marginally improved API.  It's still not a smooth process, but doable.

0. Get your ESIID from your Electric bill
1. Create a userID at https://smartmetertexas.com
2. Pick an access method

## Pick an API process

### "Official" process

Despite wording impling otherwise, it's obvious this is not really set up to grant everyday users with the ability to pull their data. Instead, I suspect they expect there to be service companies which provide the data to end users.  But anyway, the steps:

3. Have a public / private SSL certificate.  You an use Let's Encrypt, or an existing one (I re-used my Nabu Casa / Home Assistant certificate)
4. Mail your ESIID, userID and public certificate to mailto:support@smartmetertexas.com
5. Wait a number of days for the outsourced overseas IBM employees to respond
6. When they say go, you should be able to use the official API described here: https://www.smartmetertexas.com/Smart_Meter_Texas_Interface_Guide.pdf  (note: as proof of how messed up this process is, they will email you an outdated interface guide)


### Unofficial process

No waiting.  No SSL certificate.  Use login tokens instead.
First documented here: https://github.com/keatontaylor/smartmetertexas-api/wiki


## Pick your access method

### Curl

### Home Assistant

### Nodered
For a nodered example, check out this post: https://old.reddit.com/r/homeassistant/comments/ep3pki/texas_smart_meteroncor_users_api_work/
