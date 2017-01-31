require 'rails_helper'

RSpec.describe Flight, type: :model do
  it { is_expected.to validate_presence_of :flight_number }
  it { is_expected.to validate_presence_of :flight_time }
  it { is_expected.to validate_presence_of :checkin_time }
end
