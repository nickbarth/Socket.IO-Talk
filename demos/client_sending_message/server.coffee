io = require('socket.io').listen(3000, log: false)

io.sockets.on 'connection', (socket)->
  socket.on 'message_server', (message)->
    socket.emit 'message_received'
