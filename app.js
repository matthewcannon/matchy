var express = require('express');
var app = express();

app.get('/', function(request, response){
	  response.sendfile(__dirname + '/app.html');
});

app.listen(3000);