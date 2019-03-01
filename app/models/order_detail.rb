class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :composant
  has_many :recipes, through: :composants
end
