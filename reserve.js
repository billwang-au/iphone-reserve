//refer http://runnable.com/VCkxZdaHSM4nSf-X/check-iphone-6-stock-for-node-js
//node reserve.js

var https = require('https');

// models at http://www.thebookyard.com/?cPath=256_251_231_352
// stores at https://reserve.cdn-apple.com/GB/en_GB/reserve/iPhone/stores.json
var url = "https://reserve.cdn-apple.com/GB/en_GB/reserve/iPhone/availability.json";
var model = "MG4F2B/A";
var store = "R269";

function checkAvailability() {
  console.log("Checking Apple for stock...");
  
  https.get(url, function(res) {
    var body = '';

    res.on('data', function(chunk) {
        body += chunk;
    });

    res.on('end', function() {
        var json = JSON.parse(body);
        //console.log("Got response: ", json);
        console.log(model + " in stock? " + json[store][model]);
        console.log("Please wait...");
    });
  }).on('error', function(e) {
        console.log("Got error: ", e);
  });
  
  setTimeout(checkAvailability, 10000);
}

checkAvailability();
