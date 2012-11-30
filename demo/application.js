var express = require('express')
  , app = express()
  , http = require('http')
  , server = http.createServer(app)
  , io = require('socket.io').listen(server);

app.set('view engine', 'ejs');
app.set('views', __dirname + '/views');

io.sockets.on('connection', function(socket) {
  // Client Connected to Server
  console.log('Client Connected');

  socket.on('mousemove', function(mouseX, mouseY) {
    console.log('Client Moved', mouseX, ' ', mouseY);
  });

  socket.on('disconnect', function() {
    // Client Disconnected to Server
    console.log('Client Disconnected');
  });
});

app.get('/', function(req, res) {
  res.render('index');
});

server.listen(3000);
