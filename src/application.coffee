logger = require './logger'
cli = require './cli'
config = require 'nconf'

###
The base application class.
###
class Application
  constructor: ->

  ###
  Aborts the application with a message.
  
  @param {String} (msg) The message to abort the application with
  ###
  abort: (msg) =>
    logger.info(''.concat('Aborting Application: ', str, '...'))
    process.exit(1)

module.exports = Application
