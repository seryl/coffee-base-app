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
    @logger = log4js.getLogger()
    for k, v of @logger
      if typeof v is 'function'
        this[k] = this.createProxyFunction(k)
      else
        this[k] = this.createProxyObject(k)

  createProxyFunction: (funcname) =>
    realfunc = @logger[funcname]
    realfunc.apply(@logger, arguments)

  createProxyObject: (obj) =>
    () => @logger.level

module.exports = Logger
