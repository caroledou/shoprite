class Order < ApplicationRecord
  belongs_to :user
  has_many :order_details
  monetize :amounts_cents
end
