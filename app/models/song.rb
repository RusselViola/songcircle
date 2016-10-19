class User < ApplicationRecord
  validates :title, presence: true
  validates :aws_url, presence: true
  validates :rating, numericality: true
  validates :play_count, numericality: true

  belongs_to :user
end
