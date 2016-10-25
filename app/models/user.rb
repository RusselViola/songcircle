class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :songs
  has_many :circle_rosters
  has_many :circles, through: :circle_rosters

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true, presence: true
  validates :password, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end

  def admin?
    role == 'admin'
  end
end
