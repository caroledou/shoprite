class Recipe < ApplicationRecord
  has_many :composants, dependent: :destroy
  mount_uploader :photo, PhotoUploader
  RECIPE_CATEGORIES = ["Pasta", "Curry", "Salad"]
  validates :category, inclusion: { in: RECIPE_CATEGORIES }
end
