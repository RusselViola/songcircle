FactoryGirl.define do
  factory :circle do
    sequence(:id) { |n| n }
    sequence(:name) { |n| "M#{n}ntle Circl#{n}" }
    sequence(:user_id) { |n| n }
    user
  end
end
