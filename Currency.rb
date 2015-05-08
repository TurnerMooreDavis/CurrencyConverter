# Should be created with an amount and a currency code
# Should equal another Currency object with the same amount and currency code
# Should NOT equal another Currency object with different amount or currency code
# Should be able to be added to another Currency object with the same currency code
# Should be able to be subtracted by another Currency object with the same currency code
# Should raise a DifferentCurrencyCodeError when you try to add or subtract two Currency objects with different currency codes.
# Should be able to be multiplied by a Fixnum or Float and return a Currency object
# Currency.new should be able to take one argument with a currency symbol embedded in it, like "$1.20" or "€ 7.00", and figure out the correct currency code. It can also take two arguments like before, one being the amount and the other being the currency code.

class Currency
  def initialize(amount = 0,code = "nil")
    if code == "nil"
      input = amount.split("")
      symbol = input[0]
      currency_symbols = {"$" => "USD", "€" => "EUR", "¥" => "CNY", "£" => "GBP","₽" => "RUB", "₱" => "MXN"}
      if currency_symbols.has_key?(symbol)
        @code = currency_symbols[symbol]
        @amount = input[1..-1].join.to_f
      end
    else
      @amount = amount.to_f
      @code = code.upcase
    end
  end

  class DifferentCurrencyCodeError < Exception
  end

  def amount
    amount = @amount
  end

  def code
    code = @code
  end

  def ==(other_currency)
    if @amount == other_currency.amount && @code == other_currency.code
      return true
    else
      raise DifferentCurrencyCodeError, "Different Currencies"
    end
  end

  def +(other_currency)
    if @code == other_currency.code
      return Currency.new(@amount + other_currency.amount, @code)
    else
      raise DifferentCurrencyCodeError, "Cannot add different Currencies"
    end
  end

  def -(other_currency)
    if @code == other_currency.code
      return Currency.new(@amount - other_currency.amount, @code)
    else
      raise DifferentCurrencyCodeError, "Cannot subtract different Currencies"
    end
  end

  def *(num)
    if num.class == Fixnum || num.class == Float
      return Currency.new(@amount*num,@code)
    end
  end

end
