# This will guess the User class
FactoryGirl.define do

  factory :request do
    approval_status "Pending"
    messages  "Let's talk soon."
  end

  factory :admin do
    username "admin"
    first_name "Admin"
    last_name  "User"
    email_address "admin@maillinator.com"
  end
end