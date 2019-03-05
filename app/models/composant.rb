class Composant < ApplicationRecord
  belongs_to :recipe
  # belongs_to :ingredient
  monetize :price_cents
end
