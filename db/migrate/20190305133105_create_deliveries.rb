class CreateDeliveries < ActiveRecord::Migration[5.2]
  def change
    create_table :deliveries do |t|
      t.references :user, foreign_key: true
      t.references :order, foreign_key: true
      t.boolean :status
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
