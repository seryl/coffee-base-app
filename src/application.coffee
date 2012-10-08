Logger = require './logger'
CLI = require './cli'
Config = require './config'

###*
 * The base application class.
###
class Application
  constructor: (@pkg) ->
    @config = Config.get()
    @logger = Logger.get()
    @cli = new CLI(@pkg, @logger)

  abort: (str) =>
    @logger.info('aborting...')
    process.exit(1)

module.exports = Application
