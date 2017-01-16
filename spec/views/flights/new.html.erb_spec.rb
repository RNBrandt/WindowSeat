require 'rails_helper'

RSpec.describe "flights/new", type: :view do
  before(:each) do
    assign(:flight, Flight.new())
  end

  it "renders new flight form" do
    render

    assert_select "form[action=?][method=?]", flights_path, "post" do
    end
  end
end
