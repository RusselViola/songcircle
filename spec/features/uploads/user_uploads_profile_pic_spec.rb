require 'rails_helper'

feature 'profile picture' do
  scenario 'user uploads a profile picture' do
    visit root_path
    click_link 'Sign Up'

    fill_in 'First Name', with: 'Ash'
    fill_in 'Last Name', with: 'Mckasherson'
    fill_in 'Email', with: 'ash@s-mart.com'
    fill_in 'Password', with: 'boomstick!3vilisd3ad'
    fill_in 'Password Confirmation', with: 'boomstick!3vilisd3ad'
    attach_file 'Profile Picture', "#{Rails.root}/spec/support/images/dani.png"
    click_button 'Sign Up'

    expect(page).to have_content('Welcome! You have signed up successfully.')
    expect(page).to have_css("img[src*='dani.png']")
  end

  scenario 'user views profile page and sees picture' do
    img_src = File.open(File.join(Rails.root, 'spec/support/images/dani.png'))
    user = User.create(first_name: 'Dani', last_name: 'Dani', email: 'specialemail@company.com', password: 'supersecret', profile_image_id: img_src)
    login_as(user, scope: :user, run_callbacks: false)
    visit user_path(user)

    expect(page).to have_css("img[src*='dani.png']")
  end
end
