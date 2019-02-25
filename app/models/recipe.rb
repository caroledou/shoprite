class Recipe < ApplicationRecord
  has_many :composants, dependent: :destroy
end
