require 'rails_helper'

RSpec.describe Song, type: :model do
  song = FactoryGirl.create(:song)
  it 'is valid with valid attributes' do
    expect(song).to be_valid
  end
  it 'is not valid with non-valid attributes' do
    song1 = FactoryGirl.build(:song, title: nil)
    expect(song1).to_not be_valid
  end
end
