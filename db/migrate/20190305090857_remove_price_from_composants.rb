class RemovePriceFromComposants < ActiveRecord::Migration[5.2]
  def change
    remove_column :composants, :price, :integer
  end
end
