require './option1'
require 'test/unit/assertions'

include Test::Unit::Assertions

[
  ['I', 1],
  ['II', 2],
  ['III', 3],
  ['IV', 4],
  ['V', 5],
  ['VI', 6],
  ['IX', 9],
  ['X', 10],
  ['XI', 11],
  ['XIV', 14],
  ['XV', 15],
  ['XIX', 19],
  ['XXXVIII', 38],
  ['XLII', 42],
  ['XLIX', 49],
  ['LI', 51],
  ['XCVII', 97],
  ['XCIX', 99],
  ['CDXXXIX', 439],
  ['CDLXXXIII', 483],
  ['CDXCIX', 499],
  ['DCCXXXII', 732],
  ['CMLXI', 961],
  ['CMXCIX', 999],
  ['MCMXCIX', 1999]
].each do |expected, index|
  assert_equal(expected, index.to_roman)
end

# If no errors, then all tests passed.
