var express = require('express');
var expressApp = express();

expressApp.configure(function() {
    expressApp.use(express.static(__dirname + '/public'));
});

/*
 * browser api
 */
expressApp.get('/', function(req, res) {
    res.sendfile('index.html');
});

expressApp.listen(process.env.PORT || 5000);
