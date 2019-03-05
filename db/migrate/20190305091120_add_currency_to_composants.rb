class AddCurrencyToComposants < ActiveRecord::Migration[5.2]
  def change
    add_monetize :composants, :price, currency: { present: false }
  end
end
