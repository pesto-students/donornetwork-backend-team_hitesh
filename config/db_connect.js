import mysql from 'mysql'; 
const db = mysql.createConnection({
    port:25060,
    host: "db-mysql-blr1-45948-do-user-13818185-0.b.db.ondigitalocean.com",
    user: "doadmin",
    password: "AVNS_E3Fr5wD6vYOoJwWp2l9",
    database:"donor_network",
  
});
  
db.connect(function(err) {
    if (err) throw err;
    console.log("Connected!");
});

export default db;
 