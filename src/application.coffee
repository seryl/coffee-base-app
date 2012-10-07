Logger = require './logger'
CLI = require './cli'
Config = require './config'

class Application
  constructor: (@pkg) ->
    cli = new CLI(@pkg)
    @config = Config.get()
    @logger = Logger.get()

  abort: (str) =>
    @logger.info('aborting...')
    process.exit(1)

module.exports = Application
