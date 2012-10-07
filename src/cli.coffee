optimist = require 'optimist'

class CLI
  constructor: (@pkg) ->
    @argv = optimist
      .usage("Usage: " + @pkg.name)

      # configuration
      .alias('c', 'config')
      .describe('c', 'Load the configuration file')

      # help
      .alias('h', 'help')
      .describe('h', 'Shows this message')

      # append the argv from the cli
      .argv

    if (process.argv.length <= 2)
      optimist.showHelp()
      process.exit(1)

module.exports = CLI
