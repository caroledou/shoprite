class AddPriceToComposants < ActiveRecord::Migration[5.2]
  def change
    add_column :composants, :price, :integer
  end
end
