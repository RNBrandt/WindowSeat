class Flight < ApplicationRecord
  validates :flight_number, presence: true
  validates :flight_time, presence: true
  validates :checkin_time, presence: true
  validates :confirmation_number, presence: true
  belongs_to :user

  after_create :automatic_checkin

private


end
