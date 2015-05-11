require 'spec_helper'

describe "RemoconPages" do

  params = '{"maker":"SONY", "buttons":[{"btnId":"98","btnCode":"[B@21948080"},{"btnId":"99","btnCode":"[B@219ab7f0"},{"btnId":"97","btnCode":"[B@2196b8a8"}]}'

  it "should create remocon by json request" do
    expect do
      post "/remocons/save", params, { 'CONTENT_TYPE' => "application/json", "Accept" => "application/json" }
    end.to change(Remocon, :count).by(1) 
  end
end
