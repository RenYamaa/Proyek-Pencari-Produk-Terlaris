const mysql = require('mysql2');
require('dotenv').config(); // <------ Untuk read .env

const conn = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASS,
    database: process.env.DB_NAMA
});

conn.connect(err => {
    if (err) {
        console.log(err);
    } else {
        console.log("Connected to MySQL!");
    }
});

module.exports = conn;