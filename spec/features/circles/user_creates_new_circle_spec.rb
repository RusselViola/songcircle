require 'rails_helper'

feature 'A user can create a new circle' do
  context 'As an authenticated user' do
    before do
      user = FactoryGirl.create(:user)
      login_as(user, scope: :user, run_callbacks: false)
      visit new_circle_path
    end

    scenario 'The page has a Circle Name field, and an invite existing users button, and an invite new users button' do
      expect(page).to have_content('Name')
      expect(page).to have_content('Invite Existing Users')
      expect(page).to have_content('Invite New Users')
    end
  end
end
