class Request < ActiveRecord::Base
  # attr_accessor :approval_status, :messages, :feedback

  before_save :set_default_status

  has_one :mentor
  # belongs_to :mentee

  protected

  def set_default_status
    approval_status = 'Pending'
  end

end
