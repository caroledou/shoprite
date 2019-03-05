class AddDayToOrderDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :order_details, :day, :string
  end
end
