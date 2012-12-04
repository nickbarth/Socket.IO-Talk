app = require '../server.coffee'

module.exports =
  Browser: require 'zombie'
  assert:  require 'assert'
  path:    require 'path'
