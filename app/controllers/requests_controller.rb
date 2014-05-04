class RequestsController < ApplicationController
  before_filter :resource, :only => [:update, :destroy, :edit, :show]
  before_filter :resources, :only => [:index]

  def index
    @requests
  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(params[:request])
    if @request.save
      render :action => 'show'
    else
      render :action => 'new'
    end
  end

  def update
    if @request.update_attributes(params[:request])
      render :action => 'show'
    else
      render :action => 'edit'
    end
  end

  def destroy
    @request.destroy
    render :action => 'index'
  end

  private

  def resource
    @request = Request.find(params[:id])
  end

  def resources
    @requests = Request.all
  end

  def request_params
    params.require(:request).permit(:approval_status, :messages, :feedback, :mentor_id, :mentee_id)
  end
end
