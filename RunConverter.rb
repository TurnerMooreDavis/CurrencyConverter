require "./Currency.rb"
require "./CurrencyConverter.rb"
us_dollar = Currency.new(100,"USD")
more_dollar = Currency.new("€900")



usd_conversion = CurrencyConverter.new({"usd" => 1.00, "eur" => 0.89})
puts usd_conversion.conversion_ratios
