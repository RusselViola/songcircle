FactoryGirl.define do
  factory :circle do
    sequence(:id) { |n| n }
    sequence(:name) { |n| "M#{n}ntle Circl#{n}" }
    sequence(:circle_owner_id) { |n| n }
    user
  end
end
