# "If the number is less than 20, return the word for that number. Otherwise, return the word for the
# largest power of ten that is less than the number, followed by the word for the remainder."
#
# The method is a subclass of Integer. Making an inline method available to all instances of integer
class Integer
  @number_to_word = {
    10**6 => 'million',
    1000 => 'thousand',
    100 => 'hundred',
    90 => 'ninety',
    80 => 'eighty',
    70 => 'seventy',
    60 => 'sixty',
    50 => 'fifty',
    40 => 'forty',
    30 => 'thirty',
    20 => 'twenty',
    19 => 'nineteen',
    18 => 'eighteen',
    17 => 'seventeen',
    16 => 'sixteen',
    15 => 'fifteen',
    14 => 'fourteen',
    13 => 'thirteen',
    12 => 'twelve',
    11 => 'eleven',
    10 => 'ten',
    9 => 'nine',
    8 => 'eight',
    7 => 'seven',
    6 => 'six',
    5 => 'five',
    4 => 'four',
    3 => 'three',
    2 => 'two',
    1 => 'one'
  }

  @log_floors_to_ten_powers = {
    0 => 1,
    1 => 10,
    2 => 100,
    3 => 1000,
    4 => 1000,
    5 => 100_000,
    6 => 100_000,
    7 => 10_000_000
  }

  class << self
    attr_reader :number_to_word
    attr_reader :log_floors_to_ten_powers
  end

  def in_words
    return 'zero' if self == 0
    return '' if self >= 10**8
    return 'negative ' + (-self).in_words if self < 0

    num = self
    log_floor = Math.log(num, 10).floor
    ten_power = self.class.log_floors_to_ten_powers[log_floor]

    if num <= 20
      self.class.number_to_word[num]
    elsif log_floor == 1
      rem = num % 10
      [self.class.number_to_word[num - rem], rem.in_words].join(' ')
    else
      [
        (num / ten_power).in_words,
        self.class.number_to_word[ten_power],
        (num % ten_power).in_words
      ].join(' ')
    end
  end
end
