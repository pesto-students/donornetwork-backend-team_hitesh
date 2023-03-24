import mysql from 'mysql'; 
const db = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "ham242k24MYSQL$",
    database:"donor_network"
});
  
db.connect(function(err) {
    if (err) throw err;
    console.log("Connected!");
});

export default db;