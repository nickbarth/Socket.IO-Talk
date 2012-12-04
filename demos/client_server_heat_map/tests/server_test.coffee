{Browser, assert, path} = require './test_helper'

describe 'Socket.IO Server', ->
  before ->
    @browser = new Browser(silent: true)

  it 'should receive client messages', (done)->
    @browser.on 'event', (event, target)->
      if event.type == "click"
        console.log event.type

    @browser.visit "file://#{path.resolve(__dirname, '../client.html')}", ->
      console.log "Loaded"
      console.log @browser.evaluate("document.title")
      console.log "asdf"
      wait(done)
