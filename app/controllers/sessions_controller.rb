class SessionsController < ApplicationController

  def create
    @mentor = Mentor.find_or_create_from_auth_hash(auth_hash)
    self.current_user = @mentor
    redirect_to '/'
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end