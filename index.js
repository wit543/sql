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

var app = require('express')();
var http = require('http').Server(app);
var io = require('socket.io')(http);
var pg = require('pg');

app.set('port', (process.env.PORT || 5000));
app.get('/', function(req, res){
  res.sendFile(__dirname + '/index.html');
});
console.log("WWWWWW");
pg.connect(process.env.DATABASE_URL, function(err, client,done) {
  console.log(err);
  if (err) throw err;
  console.log('Connected to postgres! Getting schemas...');
});

io.on('connection', function(socket){
  socket.on('chat message', function(msg){
    io.emit('chat message', msg);
    client.query(msg).on('row',function(row){
        
        io.emit('chat message',row);
    });
    io.emit('chat message', msg);
  });
});

http.listen(app.get('port'), function(){
  console.log('listening on port: '+app.get('port'));
});
