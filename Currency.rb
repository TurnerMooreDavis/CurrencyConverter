class Currency
  def initialize(amount,code)
    @amount = amount.to_f
    @code = code.upcase
  end
  def amount
    amount = @amount
  end
  def code
    code = @code
  end
end
