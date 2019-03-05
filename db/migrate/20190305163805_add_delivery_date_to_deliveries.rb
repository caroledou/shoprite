class AddDeliveryDateToDeliveries < ActiveRecord::Migration[5.2]
  def change
    add_column :deliveries, :delivery_date, :datetime
  end
end
