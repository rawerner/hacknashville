# This will guess the User class
FactoryGirl.define do
  factory :mentor do
    first_name "John"
    last_name  "Doe"
    admin false
  end

  factory :mentee do
    first_name "John"
    last_name  "Doe"
    admin false
  end

  factory :request do
    first_name "John"
    last_name  "Doe"
    admin false
  end

  factory :admin do
    first_name "Admin"
    last_name  "User"
    admin      true
  end
end