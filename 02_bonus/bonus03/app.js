const express = require('express')
const app = express()

app.get('/', function (rea, res) {
    res.send('Hello World')
})

app.listen(3001, function () {
    console.log('Example app listening on port 3001!')
})