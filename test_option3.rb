require './option3'
require 'test/unit/assertions'

include Test::Unit::Assertions

app = App.new

[
  ['1 2 +', 3],
  ['1 2 3 + +', 6],
  ['2 1 2 + *', 6],
  ['1 2 3 4 + + +', 10],
  ['3 2 1 + *', 9],
  ['1 1 + 3 * 2 *', 12],
  ['3 2 1 + * 5 +', 14],
  ['3 2 1 + * 5 + 6 +', 20],
  ['10 21 55 + *', 760],
].each { |expression, expected| assert_equal(app.rpn_calculator(expression), expected) }

# If no errors, then all tests passed.
