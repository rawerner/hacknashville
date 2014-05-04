class RequestsController < ApplicationController

  def index
  end

  def new
    @request = Request.new
    @request.save!
  end
end
