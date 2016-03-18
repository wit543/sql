// var cool = require('cool-ascii-faces');
// var express = require('express');
// var app = express();
// var path = require("path");
// var sql = require("mysql");
// app.set('port', (process.env.PORT || 5000));

// app.use(express.static(__dirname + '/public'));

// // views is directory for all template files
// app.set('views', __dirname + '/views');
// app.set('view engine', 'ejs');

// app.get('/', function(request, response) {
//   // response.render('pages/index');
//   response.sendFile(path.join(__dirname+"/views/pages/index.html"));
//   // var result = '';
//   // var time = process.env.TIMES || 5;
//   // for(i=0;i<time;i++){
//   // 	result+= cool();
//   // }
//   // response.send(result);
// });

// app.get('/cool', function(request, response){
// 	response.send(cool());
// });

// var pg = require('pg');

// app.get('/db', function (request, response) {
//   pg.connect(process.env.DATABASE_URL, function(err, client, done) {
//     //( ProdNo varchar(64), ProdName varchar(64), ProMfg varchar(64), ProdQOH integer, ProductProce REAL, ProdNexrShipDate timestamp[(p)] [without time zone ])
//     client.query('CREATE TABLE Produc IF NOT EXISTS ( name varchar(64), num int)', function(err, result) {
//       done();
//       if (err)
//        { console.error(err); response.send("Error " + err); }
//       else
//        { response.render('pages/db', {results: result.rows} ); }
//     });
//   });
// })

// app.listen(app.get('port'), function() {
//   console.log('Node app is running on port', app.get('port'));
// });
// function handle_database(req,res) {
//
//     pool.getConnection(function(err,connection){
//         if (err) {
//           connection.release();
//           res.json({"code" : 100, "status" : "Error in connection database"});
//           return;
//         }
//
//         console.log('connected as id ' + connection.threadId);
//
//         connection.query("select * from account",function(err,rows){
//             connection.release();
//             if(!err) {
//                 console.log(rows);
//                 res.json(rows);
//             }
//         });
//
//         connection.on('error', function(err) {
//               res.json({"code" : 100, "status" : "Error in connection database"});
//               return;
//         });
//   });
// }

var express   =    require("express");
var mysql     =    require('mysql');
var host = "ske12.xyz";
var port = 8888;
var app       =   express();
var cors = require('cors');
app.use(cors());
var connection;
// var pool      =    mysql.createPool({
//     connectionLimit : 100, //important
//     host     : 'localhost',
//     user     : 'wit',
//     password : 'wit543',
//     database : 'ske',
//     debug    :  false
// });
function makeConnection() {
    connection = mysql.createConnection({
      host : 'localhost',
      user : 'wit',
      password : 'wit543',
      database : 'ske'
    });
    connection.connect();
}

function getData(req,res) {
  makeConnection();
  connection.query("SELECT * FROM account",function(err, rows){
    if(err) throw err;
    res.send(rows);
  });
  connection.end();
}


app.get("/wit/sql/sql/sql",function(req,res){
  console.log("XXXXX");
  getData(req,res);
});

app.listen(port,host);
console.log("Listening of port " + port);
