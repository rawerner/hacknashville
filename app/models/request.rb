class Request < ActiveRecord::Base
  attr_accessor :approval_status, :messages, :feedback

  before_save :set_default_status

  protected

  def set_default_status
    approval_status = 'Pending'
  end

end
