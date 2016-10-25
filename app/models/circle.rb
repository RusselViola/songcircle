class Circle < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :user_id, presence: true


  belongs_to :user
  has_many :users
  has_many :songs
end
