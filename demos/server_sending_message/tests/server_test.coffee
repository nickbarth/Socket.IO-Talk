{ Browser, assert, path } = require './test_helper'

describe 'Socket.IO Server', ->
  before ->
    @browser = new Browser( silent: true )

  it 'should receive client messages', (done)->
    @browser.on 'console', (level, message)->
      assert.equal message, 'You are now connected!'
      done null
    @browser.visit "file://#{path.resolve(__dirname, '../client.html')}"
