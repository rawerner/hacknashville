require 'spec_helper'

describe RequestsController do
  describe "GET #index" do
    it "returns http success" do
      get :index
      response.should be_success
    end
  end

  describe "POST #new" do
    it "should assign a new request" do
      request = build(:request)
      get :new
      assigns(:request).should eq request
    end
  end

end