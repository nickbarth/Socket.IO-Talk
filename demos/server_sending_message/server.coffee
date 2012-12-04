io = require('socket.io').listen(3000, log: false)

io.sockets.on 'connection', (socket)->
  socket.emit 'message_client', 'You are now connected!'
