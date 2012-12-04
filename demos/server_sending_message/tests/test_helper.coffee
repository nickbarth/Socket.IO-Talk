app = require '../server.coffee'

exports.raise_error = (error) ->
  try
    throw new Error(error)
  catch error
    done error
