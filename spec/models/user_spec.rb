require 'rails_helper'

RSpec.describe User, type: :model do
  user = FactoryGirl.create(:user)
  it 'is valid with valid attributes' do
    expect(user).to be_valid
  end
  it 'is not valid with non-valid attributes' do
    user1 = FactoryGirl.build(:user, first_name: nil)
    user2 = FactoryGirl.build(:user, last_name: nil)
    user3 = FactoryGirl.build(:user, email: nil)
    user4 = FactoryGirl.build(:user, password: nil)
    expect(user1).to_not be_valid
    expect(user2).to_not be_valid
    expect(user3).to_not be_valid
    expect(user4).to_not be_valid
  end

  it 'has a matching password confirmation for the password' do
    user5 = FactoryGirl.build(:user, password: 'password')
    user5.password = 'password'
    user5.password_confirmation = 'anotherpassword'
    expect(user5).to_not be_valid
    expect(user5.errors[:password_confirmation]).to_not be_blank
  end
end

describe '#admin?' do
  it 'is not an admin if the role is not admin' do
    user = FactoryGirl.create(:user, role: 'member')
    user2 = FactoryGirl.create(:user, role: 'circle_owner')
    expect(user.admin?).to eq(false)
    expect(user2.admin?).to eq(false)
  end

  it 'is an admin if the role is admin' do
    user = FactoryGirl.create(:user, role: 'admin')
    expect(user.admin?).to eq(true)
  end
end

describe '#circle_owner?' do
  it 'is not a circle_owner if the role is not circle_owner' do
    user = FactoryGirl.create(:user, role: 'member')
    user2 = FactoryGirl.create(:user, role: 'admin')
    expect(user.circle_owner?).to eq(false)
    expect(user2.circle_owner?).to eq(false)
  end

  it 'is an admin if the role is admin' do
    user = FactoryGirl.create(:user, role: 'circle_owner')
    expect(user.circle_owner?).to eq(true)
  end
end
