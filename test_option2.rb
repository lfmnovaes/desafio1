require './option2'
require 'test/unit/assertions'

include Test::Unit::Assertions

[
  ['negative three', -3],
  ['zero', 0],
  ['one', 1],
  ['ten', 10],
  ['twelve', 12],
  ['twenty', 20],
  ['forty two', 42],
  ['one hundred five', 105],
  ['one thousand nine hundred ninety nine', 1999]
].each { |expected, index| assert_equal(expected, index.in_words) }

# If no errors, then all tests passed.
