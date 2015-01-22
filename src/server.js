var express = require('express');
var expressApp = express();

expressApp.configure(function() {
    expressApp.use(express.static(__dirname));
});

expressApp.listen(process.env.PORT || 5000);
