class MenteesController < ApplicationController

  def create
    @mentee = Mentee.create(mentee_params)
  end

  def index
  end

  def new
  end

  def edit
  end

  def show
  end

  private

  def mentee_params
    params.require(:mentee).permit(:interest)
  end


end