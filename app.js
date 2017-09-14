var express = require('express');
var https = require('https');
var fs = require('fs');
var server = express();
var sslOptions = {
  key: fs.readFileSync('privkey.pem'),
  cert: fs.readFileSync('fullchain.pem')
};
var n = 0;
https.createServer(sslOptions, server).listen(8443)
server.get('/', function (req, res) {

    var callback = function(response) {
      var str = '';

      //another chunk of data has been recieved, so append it to `str`
      response.on('data', function (chunk) {
        str += chunk.toString('utf8'); 
      });

      //the whole response has been recieved, so we just print it out here
      response.on('end', function () {

        // send
        res.end(str);
      
      });
    };

    // request github
    https.request({
      host: 'raw.githubusercontent.com',
      path: '/mapic/mapic/master/cli/install/get-mapic-io.sh',
    }, callback).end();

});