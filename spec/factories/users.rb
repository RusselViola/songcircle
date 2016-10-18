

FactoryGirl.define do
  factory :user do
    sequence(:first_name) { |n| "N#{n}mey" }
    sequence(:last_name) { |n| "McN#{n}merson" }
    sequence(:email) { |n| "partyeva#{n}@launchacademy.com" }
    avatar_url 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/5c/5cd3cdae01e76fa0ad460e1573ea030a07bb4dd7_full.jpg'
    sequence(:password) { |n| "123#{n}4567" }
  end
end
