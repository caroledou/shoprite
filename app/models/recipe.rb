class Recipe < ApplicationRecord
  has_many :composants, dependent: :destroy
  has_many :order_details, through: :composants
  mount_uploader :photo, PhotoUploader
end
