class Currency
  def initialize(amount = 0,code = 000)
    @amount = amount.to_f
    @code = code.upcase
  end

  def amount
    amount = @amount
  end

  def code
    code = @code
  end

  def ==(other_currency)
    if self.amount == other_currency.amount && self.code == other_currency.code
      return true
    else
      return false
    end
  end

  def +(other_currency)
    if self.code == other_currency.code
      return self.amount + other_currency.amount
    else
      return false
    end
  end

  def -(other_currency)
    if self.code == other_currency.code
      return self.amount - other_currency.amount
    else
      return false
    end
  end
end
