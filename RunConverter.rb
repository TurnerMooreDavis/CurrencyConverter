require "./Currency.rb"

us_dollar = Currency.new(100,"USD")
more_dollar = Currency.new(100,"USD")

p us_dollar
p us_dollar.amount
p us_dollar.code

if us_dollar == more_dollar
  puts "true"
else
  puts "false"
end
