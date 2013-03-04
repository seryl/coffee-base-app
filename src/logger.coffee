Singleton = require './singleton'
winston = require 'winston'
MixlibLog = require('winston-mixlib-log').MixlibLog

###*
 * Logging class that acts as a singleton.
###
class Logger extends Singleton
  ###*
   * At some point we're going to want to allow appenders here.
  ###
  constructor: (level='info') ->
    unless level instanceof Array
      level = Array(level)
    @logger = new winston.Logger
      transports: [
        new MixlibLog
          timestamp: true
      ]
    @logger.log = ->
      winston.Logger.prototype.log.apply(@, arguments)
    
  get: =>
    @logger

module.exports = Logger.get()
