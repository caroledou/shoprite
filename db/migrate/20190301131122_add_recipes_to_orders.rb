class AddRecipesToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :recipes, :json
  end
end
