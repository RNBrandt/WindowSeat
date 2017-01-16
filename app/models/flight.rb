class Flight < ApplicationRecord
  validates :flight_number, presence: true
  validates :flight_time, presence: true
  validates :checkin_time, presence: true
end
