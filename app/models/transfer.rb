class Transfer < PaymentMethod
  before_validation :set_discount

  def pay (amount)
    amount
  end

  private

  def set_discount
    self.discount = 0
  end
end
