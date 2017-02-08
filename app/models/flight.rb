class Flight < ApplicationRecord
  validates :flight_time, presence: true
  validates :checkin_time, presence: true
  validates :confirmation_number, presence: true
  belongs_to :user

  before_validation :set_checkin
  after_save :set_async

  private

  def set_checkin
    self.checkin_time = self.flight_time.prev_day if self.flight_time
  end

  def set_async
    FlightWorker.perform_at(scheduled_at, self.id)
  end

  def scheduled_at
    self.checkin_time.to_time.to_i - Time.now.to_i
  end
end
