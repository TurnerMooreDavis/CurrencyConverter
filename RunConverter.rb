require "./Currency.rb"
require "./CurrencyConverter.rb"
us_dollar = Currency.new(350,"USD")
more_dollar = Currency.new("€900")



usd_conversion = CurrencyConverter.new({"USD" => 1.00, "EUR" => 0.89})
p usd_conversion.convert(us_dollar, "EUR")
