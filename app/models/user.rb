class User < ApplicationRecord
  attachment :profile_image, type: :image
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true, presence: true
  validates :password, presence: true

  has_many :songs
  has_many :circles

  def full_name
    "#{first_name} #{last_name}"
  end

  def admin?
    role == 'admin'
  end

  def circle_owner?
    role == 'circle_owner'
  end
end
