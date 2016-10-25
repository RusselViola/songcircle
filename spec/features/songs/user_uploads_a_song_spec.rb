require 'rails_helper'

feature 'User can upload a song to a circle they belong to' do
  context 'As an authenticated user' do
    before do
      user = FactoryGirl.create(:user)
      circle = FactoryGirl.create(:circle, name: 'Circle 1')
      CircleRoster.create(user_id: user.id, circle_id: circle.id)
      login_as(user, scope: :user, run_callbacks: false)
      visit new_song_path
    end

    scenario 'The user fills out title and selects a circle from the drop down menu and hits create' do
      fill_in('Title', with: 'Song 1')
        within('#circle_dropdown') do
        find(:select, 'song[circle_id]').first(:option, 'Circle 1').select_option
      end
      click_button('Create')

      expect(page).to have_content('Upload Successful.')
      expect(page).to have_content('New Song')
    end

    scenario 'The user fills out the form incorrectly' do
      click_button('Create')
      expect(page).to have_content("Title can't be blank")
      expect(page).to have_content("Circle must exist, Circle can't be blank")
    end

    scenario 'The user provides non-unqiue data' do
      fill_in('Title', with: 'New Song')
      find(:select, "Circle").first(:option, 'Circle 1').select_option
      click_button('Create')

      visit new_devtool_path
      fill_in('Title', with: 'New Song')
      find(:select, "Circle").first(:option, 'Circle 1').select_option
      click_button('Create')
      expect(page).to have_content('Title has already been taken')
    end
  end
end
