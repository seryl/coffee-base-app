Singleton = require './singleton'
log4js = require 'log4js'

###*
 * Logging class that acts as a singleton.
###
class Logger extends Singleton
  ###*
   * At some point we're going to want to allow appenders here.
  ###
  constructor: ->
    return log4js.getLogger()

module.exports = Logger
