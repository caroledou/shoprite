class Recipe < ApplicationRecord
  has_many :composants, dependent: :destroy
  has_many :reviews, dependent: :destroy
  mount_uploader :photo, PhotoUploader
  RECIPE_CATEGORIES = ['Beef', 'Chicken', 'Desert', 'Lamb', 'Miscellaneous', 'Pasta', 'Pork', 'Seafood', 'Side', 'Starter', 'Vegan', 'Vegetarian']
  validates :category, inclusion: { in: RECIPE_CATEGORIES }
end
