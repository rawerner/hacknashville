require 'spec_helper'

describe RequestsController do
  describe "GET #index" do
    it "returns http success" do
      get :index
      response.should be_success
    end
  end

  describe "POST #create" do
    it "should assign a new request" do
      get :create
      Request.all.size.should == 1
    end
  end

  # having trouble adding in parameters for the new Rspec. Must investigate!!!

  # describe "PUT #update" do
  #   it "should assign a new request" do
  #     request = stub_model('Request')
  #     binding.pry
  #     get :update, { :id => request.id, :approval_status => 'Approved' }
  #     request.approval_status.should_not == 'Pending'
  #   end
  # end


  # describe "DELETE #destroy" do
  #   it "should assign a new request" do
  #     request = build(:request)
  #     request.save
  #     get :destroy, :request => { :id => request.id }
  #     request.should_not exist
  #   end
  # end

end