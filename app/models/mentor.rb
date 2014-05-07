require 'securerandom'

class Mentor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :mentees
  has_many :requests

  def self.find_or_create_from_auth_hash(auth_hash)
    mentor = Mentor.where(:email => auth_hash[:info][:email]).first

    if mentor.blank?
      mentor = Mentor.new(
        email: auth_hash[:info][:email],
        first_name: auth_hash[:info][:first_name],
        last_name: auth_hash[:info][:last_name],
        photo_url: auth_hash[:extra][:raw_info][:pictureUrl],
        skills: auth_hash[:extra][:raw_info][:skills][:values],
        password: Devise.friendly_token[0,20]
      )
      binding.pry
      mentor.save!
    end
    mentor
  end

end