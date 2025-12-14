class Cash < PaymentMethod
  before_validation :set_discount

  def pay (amount)
    if discount.present?
      amount * (1 - (discount / 100.0))
    else
      amount
    end
  end

  private

  def set_discount
    self.discount = 15
  end
end
