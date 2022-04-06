require_relative '../../app.rb'
require  'capybara'
require  'capybara/rspec'
require  'rspec'

feature 'Take player names' do
    scenario 'User can enter their name' do
        visit('/name-form')
        expect(page).to have_button("Submit")
    end
    scenario 'Display player names' do
        visit('/name-form')
        fill_in 'p1name', with: 'Ash'
        fill_in 'p2name', with: 'Bash'
        click_button('Submit')
        expect(page).to have_content('Ash')
    end
end