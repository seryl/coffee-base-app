Singleton = require './singleton'
nconf = require 'nconf'

###*
 * Config class that acts as a singleton.
###
class Config extends Singleton
  constructor: ->
      @config = nconf

module.exports = Config
