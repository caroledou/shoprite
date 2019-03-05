class RemoveDateFromDeliveries < ActiveRecord::Migration[5.2]
  def change
    remove_column :deliveries, :date, :date
  end
end
