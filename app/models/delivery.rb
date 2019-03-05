class Delivery < ApplicationRecord
  belongs_to :user
  belongs_to :order

  validates :delivery_date, :address, presence: true
  validate :delivery_date_cannot_be_in_the_past

  def delivery_date_cannot_be_in_the_past
    if delivery_date.present? && delivery_date < Date.today
      errors.add(:delivery_date, "can't be in the past")
    end
  end
end
