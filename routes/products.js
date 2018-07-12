const express = require('express');
const router = express.Router();

const database = require('../services/database.js');

router.get('/all', function(req, res, next){
    database.sendQuery('SELECT * FROM products', function(err, results){
        if(err){
            console.log(err)
        }
        res.send(results)
    })
})

module.exports = router;