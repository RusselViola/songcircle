require 'rails_helper'

feature 'A user can create a new circle' do
  binding.pry
  context 'As an authenticated user' do
    before do
      user = FactoryGirl.create(:user)
      login_as(user, scope: :user, run_callbacks: false)
      visit new_circle_path
    end
    circle = FactoryGirl.build(:circle)

    scenario 'The page has a Circle Name field, and an invite existing users button, and an invite new users button' do
      expect(page).to have_content('Name')
      expect(page).to have_content('Invite Existing Users')
      expect(page).to have_content('Invite New Users')
    end

    scenario 'The user fills out name and selects a circle from the drop down menu and hits submit' do
      fill_in('Circle Name', with: circle.name)
      click_button('Create')

      expect(page).to have_content('Created Successfully.')
      expect(page).to have_content(circle.name)
    end

    scenario 'The user fills out the form incorrectly' do
      click_button('Create')
      expect(page).to have_content("Name can't be blank")
    end

    scenario 'The user provides non-unqiue data' do
      fill_in('Circle Name', with: circle.name)
      click_button('Create')
      visit new_circle_path
      fill_in('Circle Name', with: circle.name)
      click_button('Create')
      expect(page).to have_content('Name has already been taken')
    end

  end
end
