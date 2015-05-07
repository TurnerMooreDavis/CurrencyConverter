require "./Currency.rb"

us_dollar = Currency.new(100,"USD")
more_dollar = Currency.new("€900")





puts  more_dollar.amount
puts  more_dollar.code

puts  us_dollar.amount
puts  us_dollar.code
