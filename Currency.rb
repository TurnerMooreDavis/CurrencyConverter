class Currency
  def initialize(amount = 0,code = 000)
    if code == 000
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
      return @amount + other_currency.amount
    else
      raise DifferentCurrencyCodeError, "Cannot add different Currencies"
    end
  end

  def -(other_currency)
    if @code == other_currency.code
      return @amount - other_currency.amount
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
