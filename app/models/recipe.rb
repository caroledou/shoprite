class Recipe < ApplicationRecord
  has_many :composants, dependent: :destroy
  mount_uploader :photo, PhotoUploader
end
