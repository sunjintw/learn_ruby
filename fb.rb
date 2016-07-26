def fizz_or_buzz(num)
  if num % 15 == 0
    'FizzBuzz'
  elsif num % 3 == 0 || "#{num}".include?('3')
    'Fizz'
  elsif num % 5 == 0 || "#{num}".include?('5')
    'Buzz'
  else
    num
  end
end

(1..100).each do |num|
  puts fizz_or_buzz(num)
end


