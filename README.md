iphone-reserve
==============

iphone 6 and iphone 6 plus reserve script 

The key point is the availability URLs

https://reserve.cdn-apple.com/CA/en_CA/reserve/iPhone/availability.json

https://reserve.cdn-apple.com/GB/en_GB/reserve/iPhone/availability.json

https://reserve.cdn-apple.com/AU/en_AU/reserve/iPhone/availability.json

When you access above URLs, you will get the avaialbility status directly, sample here: https://github.com/bw57899/iphone-reserve/blob/master/sample.availability.json


The shop name and id is here: 

https://reserve.cdn-apple.com/CA/en_CA/reserve/iPhone/stores.json

https://reserve.cdn-apple.com/GB/en_GB/reserve/iPhone/stores.json

https://reserve.cdn-apple.com/AU/en_AU/reserve/iPhone/stores.json


So use "Wget or CURL" and filter the result with any program lanaguage to get available shop and iphone model and you can run the script in cronjob and send warning mail to your maibox automatically. 
