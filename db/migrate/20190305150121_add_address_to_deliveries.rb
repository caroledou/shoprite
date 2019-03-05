class AddAddressToDeliveries < ActiveRecord::Migration[5.2]
  def change
    add_column :deliveries, :address, :string
  end
end
