require "rails_helper"

RSpec.describe FlightsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/flights").to route_to("flights#index")
    end

    it "routes to #new" do
      expect(:get => "/flights/new").to route_to("flights#new")
    end

    it "routes to #show" do
      expect(:get => "/flights/1").to route_to("flights#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/flights/1/edit").to route_to("flights#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/flights").to route_to("flights#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/flights/1").to route_to("flights#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/flights/1").to route_to("flights#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/flights/1").to route_to("flights#destroy", :id => "1")
    end

  end
end
