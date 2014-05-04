require 'spec_helper'

describe Request do
  before(:each) do
    @request = build(:request)
  end

  it "should have an #approval_status" do
    @request.approval_status.should == "Pending"
  end

  # it "should not be valid without a mentor" do

  it "should not be valid without a mentoree" do
  end

  it "should store #messages" do
    @request.should respond_to(:messages)
  end

  it "should store #feedback" do
    @request.should respond_to(:feedback)
  end
end
