class MentorsController < ApplicationController
  # before_filter :authenticate_user!

  def index
    @mentors = Mentor.all
  end


  def create
    @mentor = Mentor.new(mentor_params)
    if @mentor.save
      redirect_to @mentor
    else
      render 'new'
    end
  end


  def new
  end


  def edit
    @mentor = Mentor.find(params[:id])
  end


  def update
    @mentor = Mentor.find(params[:id])
    if @mentor.update_attributes(mentor_params)
      redirect_to @mentor
    else
      render "edit"
    end
  end


  def show
    @mentor = Mentor.find(params[:id])
  end


  private

  def mentor_params
    params.require(:mentor).permit(:email, :password, :first_name, :last_name, :id)
  end


end