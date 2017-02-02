require 'rails_helper'

RSpec.describe Flight, type: :model do
  let(:flight_time) { DateTime.new(2017,-11,-26,-20,-55,-54) }
  let(:confirmation_number) { "Scooby" }
  let!(:user) { FactoryGirl.create :user }

  context "the model validates presence of confirmation_number" do
      let(:flight) { Flight.new(flight_time: flight_time, user: user) }

      it "will not be valid" do
        expect(flight).to_not be_valid
      end
    end

  context "the model validates presence of user and checkin_time" do
    let(:flight) { Flight.new(flight_time: flight_time, confirmation_number: confirmation_number) }

    it "will not be valid" do
      expect(flight).to_not be_valid
    end
  end

  context "the model validates presence of user and checkin_time" do
    let(:flight) { Flight.new(user: user, flight_time: flight_time, confirmation_number: confirmation_number) }

    it "will be valid" do
      expect(flight).to be_valid
    end
  end

  describe "when a new Flight has been created" do
    let(:flight) { Flight.new(flight_time: flight_time, confirmation_number: confirmation_number, user: user) }

    context "before the flight has been saved" do
      before { flight.valid? }

      it "will create and set a checkin_time before the model is saved" do
        expect(flight.checkin_time).to eq(flight_time.prev_day)
      end
    end

    context "after the flight has been saved" do
      before { flight.save }

      it "will set a FlightWorker after the Flight has been created" do
        expect(FlightWorker.jobs.size).to eq 1
      end
    end
  end
end
