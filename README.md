# smart_meter_texas
In December 2019, Smart Meter Texas (SMT) introduced their "2.0" with marginally improved API.  It's still not a smooth process, but doable.

0. Get your ESIID from your Electric bill
1. Create a userID at https://smartmetertexas.com
2. Pick an API process
3. Pick an access method

## Pick an API process

### "Official" API process

Despite wording impling otherwise, given the complexity required and manual steps, it's obvious this is not really set up with everyday residential users in mind.  Instead, I suspect this is more geared towards companies which would then provide the data to end users. Make no mistake, residential users are allowed - it's just the steps aren't user friendly:

* Have a public / private SSL certificate.  You can use Let's Encrypt to generate one, or use an existing one (I re-used my Nabu Casa / Home Assistant certificate)
* Determine your public IP address of your router by visiting https://whatismyipaddress.com/ from the network that you will be accessing the API from
* Mail your public IP address, ESIID, userID and public certificate to support@smartmetertexas.com
* Wait a number of days for the outsourced overseas IBM employees to respond
* When they say go, you should be able to use the official API. As proof of how messed up this process is, they will email you an outdated interface guide.  This latest is https://www.smartmetertexas.com/Smart_Meter_Texas_Interface_Guide.pdf or with all their other documentation: https://smartmetertexas.com/quickrefguides

Oh, and yes, your IP address might change some day, at which point you might need to email support again to update the IP.  Or maybe by then, they won't care about the IP address.  I tried to get support to use a domain name and they would not.  

### Unofficial API process

Use login tokens instead.  No waiting.  No SSL certificate. 
First documented here: https://github.com/keatontaylor/smartmetertexas-api/wiki


## Pick access method

First off, whatever method you use, **PLEASE** make sure not to poll for results faster than every 900 seconds / 15 minutes.  Some programs might default polling to every 10 seconds. There is no reason to, and entities tend to start taking notice and adding additional restrictions when polling rates are so high.

### Curl

### Home Assistant

### Nodered
For a nodered example, check out this post: https://old.reddit.com/r/homeassistant/comments/ep3pki/texas_smart_meteroncor_users_api_work/
