log4js = require 'log4js'

class Logger
  constructor: () ->
    logger = log4js.getLogger()

module.exports =
  get: () =>
    return instances if instance?
    return new Logger
