require 'rails_helper'
include FlightsHelper

RSpec.describe FlightsHelper, type: :helper do
  let(:user) { User.create(email: "this@that.com", password:"aaaaaa")}
  let(:flight) { Flight.create(user: user, flight_number: "John", confirmation_number: "Paul", flight_time: Time.zone.now) }

  describe "#flight_lookup" do
    it "will return the correct Flight object" do
      # p "$$$$$$$$$$$ #{FlightsHelper.flight_lookup(flight.id)}"
      expect(FlightsHelper.flight_lookup(flight.id)).to eq flight
    end
  end
end
