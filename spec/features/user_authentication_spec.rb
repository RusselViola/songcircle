require 'rails_helper'

feature 'user signs up', %(
  As an unauthenticated user
  I want to sign up
  So that I can create Dev Tools for review and write reviews on Dev Tools
) do

  scenario 'specify valid and required information' do
    user1 = FactoryGirl.build(:user)
    visit root_path
    save_and_open_page
    click_link 'Sign Up'
    fill_in "First Name", with: "#{user1.first_name}"
    fill_in "Last Name", with: "#{user1.last_name}"
    fill_in "Email", with: "#{user1.email}"
    fill_in "user_password", with: "#{user1.password}"
    fill_in 'Password Confirmation', with: "#{user1.password}"
    click_button 'Sign Up'
    expect(page).to have_content("Welcome! You have signed up successfully.")
    expect(page).to have_content("Sign Out")
  end

  scenario 'required information is not supplied' do
    visit root_path
    click_link 'Sign Up'
    click_button 'Sign Up'

    expect(page).to have_content("can't be blank")
    expect(page).to_not have_content("Sign Out")
  end

  scenario 'password confirmation does not match confirmation' do
    visit root_path
    click_link 'Sign Up'

    fill_in 'Password', with: 'password'
    fill_in 'Password Confirmation', with: 'somethingdifferent'

    click_button 'Sign Up'

    expect(page).to have_content("doesn't match")
    expect(page).to_not have_content("Sign Out")
  end
end
