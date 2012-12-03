var port = process.env.PORT || 3000 
  , server = require('http').createServer(function(){})
  , io  = require('socket.io').listen(server);

io.set("transports", ["xhr-polling"]); 
io.set("polling duration", 1); 

io.sockets.on('connection', function(socket) {
  // Client connected to server
  console.log('event: Client Connected');

  // Client disconnected to server
  socket.on('disconnect', function() {
    console.log('event: Client Disconnected');
  });

  // Receive Client Events
  socket.on('event', function(message) {
    console.log('event: Received '+message);
  });
});

server.listen(port);
