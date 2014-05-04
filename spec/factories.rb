# This will guess the User class
FactoryGirl.define do
  # factory :mentor do
  #   first_name "John"
  #   last_name  "Doe"
  #   admin false
  # end

  # factory :mentee do
  #   first_name "John"
  #   last_name  "Doe"
  #   admin false
  # end

  # factory :request do
  #   first_name "John"
  #   last_name  "Doe"
  #   admin false
  # end

  factory :admin do
    username "admin"
    first_name "Admin"
    last_name  "User"
    email_address "admin@maillinator.com"
    # admin      true
  end
end