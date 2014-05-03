require 'spec_helper'

describe RequestController do
  before(:each) do
    @request = build(:request)
  end

  describe "GET #index" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end

    it "should render the :index view" do
      get :index
      response.should render_template :index
    end
  end

  describe "GET #show" do
    it "should assign @request" do
      get :show, id: @request
      assigns(:request).should == @request
    end

    it "should render the :show view" do
      get :show
      response.should render_template :show
    end
  end

  describe "GET #new" do
    it "should assign @request to the new request" do
      get :new
      assigns(:request).should == @request
    end

    it "should render the :new view" do
      get :new
      response.should render_template :new
    end
  end

  describe 'PUT #update' do
    context "valid attributes" do
      put :update, id: @request, request: Factory.attributes_for(:request, approval_status: "Approved")
    end
  end

  describe "GET #delete" do
    it "deletes the request" do
      expect{ delete :destroy, id: @request }.to change(Request,:count).by(-1)
    end

    it "redirects to requests#index" do
      delete :destroy, id: @request response.should redirect_to requests_url
    end
  end

end