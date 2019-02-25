class CreateComposants < ActiveRecord::Migration[5.2]
  def change
    create_table :composants do |t|
      t.integer :quantity
      t.references :recipe, foreign_key: true
      t.references :ingredient, foreign_key: true

      t.timestamps
    end
  end
end
