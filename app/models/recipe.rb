class Recipe < ApplicationRecord
  has_many :components, dependent: :destroy
end
