class Flight < ApplicationRecord
  validates :flight_number, presence: true
  validates :flight_time, presence: true
  validates :checkin_time, presence: true
  validates :confirmation_number, presence: true
  belongs_to :user

  before_create :set_checkin
  after_create :set_async

  private

  def set_checkin
    self.checkin_time = self.flight_time.prev_day
  end

  def set_async
    FlightWorker.perform_at(scheduled_at, self.id)
  end

  def scheduled_at
    self.checkin_time.to_time.to_i - Time.now.to_i
  end

end
