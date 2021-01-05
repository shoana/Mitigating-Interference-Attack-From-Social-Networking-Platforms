var mysql = require('mysql');

var con = mysql.createConnection({
  host: '192.168.64.2',
  user: 'username',
  password: 'password',
});

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
});
