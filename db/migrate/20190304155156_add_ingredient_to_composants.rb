class AddIngredientToComposants < ActiveRecord::Migration[5.2]
  def change
    add_column :composants, :ingredient, :string
  end
end
