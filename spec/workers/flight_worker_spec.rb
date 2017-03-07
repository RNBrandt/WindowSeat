require 'rails_helper'

RSpec.describe FlightWorker, type: :worker do

  it "will enqueue a worker when called" do
    expect{ FlightWorker.perform_async(1) }.to change{ FlightWorker.jobs.size }
  end
end
