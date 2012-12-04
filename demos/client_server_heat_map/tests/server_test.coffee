{Browser, assert, path} = require './test_helper'

describe 'Socket.IO Server', ->
  before ->
    @browser = new Browser(silent: true)

  it 'should receive client event', (done)->
    @browser.on 'event', (event, target)->
      if event.type == 'mousemove'
        done null
    @browser.visit "file://#{path.resolve(__dirname, '../client.html')}", ->
      @browser.action '#heatMapEl', 'mousemove'
