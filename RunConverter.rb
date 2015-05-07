require "./Currency.rb"

us_dollar = Currency.new(100,"USD")
more_dollar = Currency.new(900,"USq")

p us_dollar
p us_dollar.amount
p us_dollar.code



puts  more_dollar - us_dollar
