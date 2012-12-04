helper = require './test_helper'
Browser = require 'zombie'
assert = require 'assert'
path = require 'path'

ex = exports

describe 'Socket.IO Server', ->
  before ->
    ex.browser = new Browser(silent: true)

  it 'should receive client messages', (done)->
    ex.browser.on 'console', (level, message)->
      assert.equal message, 'You are now connected!'
      done null
    ex.browser.visit "file://#{path.resolve(__dirname, '../client.html')}"
