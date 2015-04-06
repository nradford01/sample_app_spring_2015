# This will guess the User class
FactoryGirl.define do
  factory :user, aliases: [:michael] do
    name "Michael Example"
    # email "michael@example.com"
    sequence(:email) { |n| "michael#{n}@example.com" }
    password_digest User.digest('password')
    admin true
    activated true
    activated_at Time.zone.now
  end
end