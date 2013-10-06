var express = require('express'),
    app = module.exports = express();

app.engine('.html', require('ejs').__express);
app.set('views', __dirname + '/views');
app.set('view engine', 'html');

app.get('/', function (req, res) {
    res.setHeader('Content-Type', 'text/html');
    //res.setHeader('Content-Length', body.length);
    res.render('index', {
       'title': 'Andrei Gherasim - blog' 
    });
});

app.listen(3000);
