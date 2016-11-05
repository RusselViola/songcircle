FactoryGirl.define do
  factory :user do
    sequence(:first_name) { |n| "N#{n}mey" }
    sequence(:last_name) { |n| "McN#{n}merson" }
    sequence(:email) { |n| "partyeva#{n}@launchacademy.com" }
    sequence(:password) { |n| "123#{n}4567" }
  end
end
