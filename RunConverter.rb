require "./Currency.rb"
require "./CurrencyConverter.rb"
require "./CurrencyTrader.rb"
us_dollar = Currency.new(350,"USD")
euro = Currency.new("€900")
yen = Currency.new(400, "CNY")






usd_conversion = CurrencyConverter.new({"USD" => 1.00, "EUR" => 0.89, "CNY" => 6.20})
usd_conversion_later = CurrencyConverter.new({"USD" => 1.00, "EUR" => 0.95, "CNY" => 10.20})

puts usd_conversion.convert(yen, "EUR")

trade = CurrencyTrader.new(usd_conversion,usd_conversion_later,us_dollar)
trade.suggest_investment
