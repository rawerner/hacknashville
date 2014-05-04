class MenteesController < ApplicationController

  def create
    mentee = Mentee.create(mentee_params)
  end

  def index
    @mentees = Mentee.all
  end

  def new
  end

  def edit
  end

  def show
    @mentee = Mentee.find(params[:id])
  end

  private

  def mentee_params
    params.require(:mentee).permit(:interest)
  end


end