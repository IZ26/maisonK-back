const mysql = require('mysql');

const connection = mysql.createConnection({
    host: 'localhost',
    port: '8889',
    user: 'root',
    password: 'root',
    database: 'maisonK'
})

connection.connect(function (err) {
    if (err) throw err;
    console.log('connected')
})

function sendQuery(query, callback) {
    connection.query(query, function (error, results, fields) {
        if (error) {
            callback(error)
        } else {
            callback(null, results);
        }
    })

}

module.exports = ({
    sendQuery: sendQuery
})