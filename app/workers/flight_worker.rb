class FlightWorker
  include Sidekiq::Worker
  include FlightsHelper

  def perform(flight_id)
    flight_object = flight_lookup flight_id
    return unless flight_object
    automatic_checkin flight_object
    FlightsMailer.checked_in(flight_object).deliver
  end
end
