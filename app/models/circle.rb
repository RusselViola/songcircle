class Circle < ApplicationRecord
  validates :name, presence: true
  validates :circle_owner_id, presence: true

  belongs_to :circle_owner
  has_many :users
  has_many :songs
end
