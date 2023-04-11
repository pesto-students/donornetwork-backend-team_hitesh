import mysql from 'mysql'; 
import * as dotenv from 'dotenv';
import path from 'path';
import methodOverride from 'method-override';
dotenv.config();
console.log(process.env.DB_HOST,process.env.DB_PASSWORD)
const db = mysql.createConnection({
    port:process.env.DB_PORT,
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database:process.env.DB_NAME
});
  
db.connect(function(err) {
    if (err) throw err;
    console.log("Connected!");
});

export default db;
 