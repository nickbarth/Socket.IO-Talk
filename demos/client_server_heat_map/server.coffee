io = require('socket.io').listen(3000, log: false)

io.sockets.on 'connection', (socket)->
  socket.on 'mouse_move', (xpos, ypos)->
    io.sockets.volatile.emit 'mouse_move', xpos, ypos
