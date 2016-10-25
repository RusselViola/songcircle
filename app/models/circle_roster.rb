class CircleRoster < ApplicationRecord
  belongs_to :user
  belongs_to :circle_id

  validates :user_id, presence: true
  validates :circle_id, presence: true
end
