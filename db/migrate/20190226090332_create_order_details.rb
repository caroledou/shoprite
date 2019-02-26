class CreateOrderDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :order_details do |t|
      t.references :order, foreign_key: true
      t.references :composant, foreign_key: true
      t.boolean :no, default: false

      t.timestamps
    end
  end
end
