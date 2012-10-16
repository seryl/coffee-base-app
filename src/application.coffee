Logger = require './logger'
CLI = require './cli'
Config = require './config'

###*
 * The base application class.
###
class Application
  constructor: () ->
    @config = Config.get()
    @logger = Logger.get()
    @cli = new CLI()

  abort: (str) =>
    @logger.info('aborting...')
    process.exit(1)

module.exports = Application
