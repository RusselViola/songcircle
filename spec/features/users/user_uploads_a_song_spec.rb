
feature 'User can upload a song to a circle they belong to' do
  context 'As an authenticated user' do
    before do
      user = FactoryGirl.create(:user)
      login_as(user, scope: :user, run_callbacks: false)
      visit new_circle_path
    end

    scenario 'The user fills out title and selects a circle from the drop down menu and hits create' do
      fill_in('Title', with: 'New Circle')
      click_button('Create')

      expect(page).to have_content('Circle Created Successfully.')
      expect(page).to have_content('New Circle')
    end

    scenario 'The user fills out the form incorrectly' do
      click_button('Create')
      expect(page).to have_content("Name must exist, Name can't be blank")
    end

    scenario 'The user provides non-unqiue data' do
      fill_in('Title', with: 'New Circle')
      click_button('Create')

      visit new_circle_path
      fill_in('Title', with: 'New Song')
      find(:select, "Circle").first(:option, 'Circle 1').select_option
      click_button('Create')
      expect(page).to have_content('Title has already been taken')
      expect(page).to have_content('Body has already been taken')
      expect(page).to have_content('Github link has already been taken')
    end
  end
end
