
NUM_TO_S = {
  1=> 'one',
  2=> 'two',
  3=> 'three',
  4=> 'four',
  5=> 'five',
  6=> 'six',
  7=> 'seven',
  8=> 'eight',
  9=> 'nine',
  10=> 'ten',
  11=> 'eleven',
  12=> 'twelve',
  13=> 'thirteen',
  14=> 'fourteen',
  15=> 'fifteen',
  16=> 'sixteen',
  17=> 'seventeen',
  18=> 'eighteen',
  19=> 'nineteen',
  20=> 'twenty',
  30=> 'thirty',
  40=> 'forty',
  50=> 'fifty',
  60=> 'sixty',
  70=> 'seventy',
  80=> 'eighty',
  90=> 'ninety'
  }

def num_to_word(num)
  num_s = num.to_s
  num_array = num_s.reverse.chars.each_slice(3).map(&:join).map(&:reverse);
  dollars = num_array.size > 0 ? get_dollars(num_array[0]) : nil
  thousand = num_array.size > 1 ? get_thousand(num_array[1]) : nil
  million = num_array.size > 2 ? get_million(num_array[2]) : nil
  billion = num_array.size > 3 ? get_billion(num_array[3]) : nil
  trillion = num_array.size > 4 ? get_trillion(num_array[4]) : nil
  [trillion,billion,million,thousand,dollars].compact.join(", ")
end

def get_dollars num_s
  get_num_s(num_s) + ' dollars'
end

def get_thousand num_s
  get_num_s(num_s) + ' thousand'
end

def get_million num_s
  get_num_s(num_s) + ' million'
end

def get_billion num_s
  get_num_s(num_s) + ' billion'
end

def get_trillion num_s
  get_num_s(num_s) + ' trillion'
end

def get_num_s num_s
  num = num_s.to_i
  hundred_s = get_hundred_s(num / 100)
  hundred_s + get_double_digit_s(num % 100)
end

def get_hundred_s hundred
  hundred > 0 ? "#{NUM_TO_S[hundred]} hundred and " : ''
end

def get_double_digit_s double_digit
  if double_digit >= 20
    bit = double_digit % 10
    ten = double_digit - bit
    bit > 0 ? "#{NUM_TO_S[ten]} #{NUM_TO_S[bit]}" : NUM_TO_S[ten]
  elsif double_digit > 0
    NUM_TO_S[double_digit]
  end
end

puts 102030405060789
puts num_to_word(102030405060789)
