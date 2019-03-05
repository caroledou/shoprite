class RemoveTimeFromDeliveries < ActiveRecord::Migration[5.2]
  def change
    remove_column :deliveries, :time, :time
  end
end
