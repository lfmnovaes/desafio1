# "For each key/value pair in the hash, append the value to the string the number of times equal to
# the key divided by the number."
#
# The hash is ordered from largest to smallest. This is important because we want to start with 
# the largest possible Roman numeral and work our way down
#
# The method is a subclass of Integer. Making an inline method available to all instances of integer
class Integer
  @roman_numbers = {
    1000 => 'M',
    900 => 'CM',
    500 => 'D',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I'
  }

  class << self
    attr_reader :roman_numbers
  end

  def to_roman
    n = self
    roman = ''
    self.class.roman_numbers.each do |value, letter|
      roman << letter * (n / value)
      n = n % value
    end
    roman
  end
end
