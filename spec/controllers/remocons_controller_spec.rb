require 'spec_helper'

describe RemoconsController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "returns http success" do
      get 'show'
      response.should be_success
    end
  end

  describe "GET 'save'" do
    it "returns http success" do
      get 'save'
      response.should be_success
    end
  end

end
