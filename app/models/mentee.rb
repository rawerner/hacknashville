class Mentee < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :requests

  def interests
    mentee = Mentee.select('interest').where(email: self.email)
    mentee[0].interest
  end
end
