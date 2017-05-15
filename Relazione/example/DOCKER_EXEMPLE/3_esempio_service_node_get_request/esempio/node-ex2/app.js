"use strict"

const express = require('express');
const uuid = require('uuid');
const os = require('os');
const bodyParser = require('body-parser');

let app = express();

app.set('view engine', 'jade');
app.use(express.static(__dirname + 'public'));

let hostname = os.hostname();

app.use(bodyParser.json())

app.get("/guid", (req, res) => {
    res.json({ "guid": uuid.v4(), "container": hostname });
});

app.get('/hello', function (req, res) {
  res.send('A text with simple Hello WORLD!!');
});

app.get("/", (req, res) => {
    res.render('index', {scripts: ['js/helper.js']});
});

app.listen(9111, () => {
    console.log("listening on port 9111");
});
