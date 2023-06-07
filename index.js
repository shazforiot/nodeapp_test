var express = require('express');
var app = express();

app.get('/', function (req, res) {
    res.send('.............................................................HELLO FROM PRITESH...............................................');
});

app.get('/will', function (req, res) {
    res.send('...................................................Hello World..........................................................');
});
app.get('/ready', function (req, res) {
    res.send('Great!, It works!');
});
app.listen(process.env.PORT || 3000);
module.exports = app;
