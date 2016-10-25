FactoryGirl.define do
  factory :song do
    sequence(:id) { |n| n }
    sequence(:title) { |n| "T#{n}tle" }
    sequence(:play_count) { |n| n }
    rating { rand(1..5) }
    created_at Time.now
    updated_at Time.now
    sequence(:user_id) { |n| n }
    sequence(:audio_id) { |n| n }
    sequence(:circle_id) { |n| n }
    user
  end
end
