require 'rails_helper'

RSpec.describe "flights/edit", type: :view do
  before(:each) do
    @flight = assign(:flight, Flight.create!())
  end

  it "renders the edit flight form" do
    render

    assert_select "form[action=?][method=?]", flight_path(@flight), "post" do
    end
  end
end
