class FlightWorker
  include Sidekiq::Worker
  include FlightsHelper

  def perform(flight_id)
    flight_object = flight_lookup flight_id
    automatic_checkin flight_object
    text_reminder flight_object.user.phone_number
  end
end
