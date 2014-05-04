class RequestsController < ApplicationController
  before_filter :resource, :only => [:update, :destroy, :edit, :show]
  before_filter :resources, :only => [:index]

  def index
    @request
  end

  def create
    @request = Request.new(params[:resource])
    if @request.save
      render :nothing => true
    else
      render :new
    end
  end

  def update
    render :edit if !@request.update_attributes(params[:resource])
  end

  def destroy
    @request.destroy
  end

  private

  def resource
    binding.pry
    @request = Request.find(params[:id])
  end

  def resources
    @requests = Request.all
  end

  def request_params
    params.require(:request).permit(:approval_status, :messages, :feedback)
  end
end
