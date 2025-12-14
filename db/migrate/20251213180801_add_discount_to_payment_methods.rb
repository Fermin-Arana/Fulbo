class AddDiscountToPaymentMethods < ActiveRecord::Migration[8.1]
  def change
    add_column :payment_methods, :discount, :decimal
  end
end
