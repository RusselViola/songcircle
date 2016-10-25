class Song < ApplicationRecord
  attachment :audio, extension: ["mp3", "mp4", "m4a", "aif", "wav"]

  belongs_to :user
  belongs_to :circle

  validates :title, presence: true
  validates :rating, numericality: true
  validates :play_count, numericality: true
  validates :user_id, presence: true
end
