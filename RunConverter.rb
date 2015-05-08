require "./Currency.rb"
require "./CurrencyConverter.rb"
us_dollar = Currency.new(350,"USD")
euro = Currency.new("€900")
yen = Currency.new(400, "CNY")






usd_conversion = CurrencyConverter.new({"USD" => 1.00, "EUR" => 0.89, "CNY" => 6.20})
p usd_conversion.convert(euro, "EUR")
p usd_conversion.convert(us_dollar, "EUR")
p usd_conversion.convert(yen, "EUR")
