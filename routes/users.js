const express = require('express');
const router = express.Router();
const bcrypt = require('bcrypt');

const database = require('../services/database.js');

router.post('/login', function(req, res, next) {
    database.sendQuery(`SELECT * FROM users WHERE mail LIKE '${req.body.mail}'`, function (err, user) {
        if (err) {
            return console.log(err);
        }
        bcrypt.compare(req.body.password, user[0].password).then(function(result) {
            if(!result){
                res.status(401).send({
                    message: "mot de passe incorrect"
                })
            }
            return res.status(200).json(user);
        });
    })
});

router.post('/signin', function(req, res, next) {
    bcrypt.hash(req.body.password, 10).then(function(hash){
        database.sendQuery(`INSERT INTO users (firstName, lastName, mail, password) VALUES ('${req.body.firstName}', '${req.body.lastName}', '${req.body.mail}', '${hash}')`, function (err, results) {
            if (err) {
                console.log(err)
            }
            return database.sendQuery(`SELECT * FROM users WHERE id LIKE '${results.insertId}'`, (err, user) => {
                if(err){
                    return res.send(err);
                }
                return res.send(user);
            })
        })
    })
});


/* GET users listing. */
router.get('/', function (req, res, next) {
    res.send('respond with a resource');
});

module.exports = router;

