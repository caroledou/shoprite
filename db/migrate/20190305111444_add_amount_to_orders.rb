class AddAmountToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :amount, :monetize, currency: { present: false }
  end
end
