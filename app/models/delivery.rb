class Delivery < ApplicationRecord
  belongs_to :user
  belongs_to :order

  validates :date, :time, presence: true
  validate :date_cannot_be_in_the_past
  validate :time_cannot_be_in_the_past

  def date_cannot_be_in_the_past
    if date.present? && date < Date.today
      errors.add(:date, "can't be in the past")
    end
  end

  def time_cannot_be_in_the_past
    if time.present? && time < Time.now
      errors.add(:time, "can't be in the past")
    end
  end
end
