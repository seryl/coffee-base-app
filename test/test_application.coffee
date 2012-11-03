vows = require 'vows'
assert = require 'assert'

vows
  .describe("Base application tests")
  .addBatch
    'tests are not implemented':
      assert.equal 1, 2

  .export(module)
