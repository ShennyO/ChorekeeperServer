require "rails_helper"

RSpec.describe V1::ChoresController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/v1/chores").to route_to("v1/chores#index")
    end


    it "routes to #show" do
      expect(:get => "/v1/chores/1").to route_to("v1/chores#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/v1/chores").to route_to("v1/chores#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/v1/chores/1").to route_to("v1/chores#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/v1/chores/1").to route_to("v1/chores#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/v1/chores/1").to route_to("v1/chores#destroy", :id => "1")
    end

  end
end
