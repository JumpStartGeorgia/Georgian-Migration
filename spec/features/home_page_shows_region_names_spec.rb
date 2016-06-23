require 'rails_helper'

feature 'Home page shows region names' do
  scenario 'User can read region name Tbilisi' do
    FactoryGirl.create(:region, name: 'Tbilisi')
    FactoryGirl.create(:region, name: 'Imereti')

    visit root_path

    expect(page).to have_content('Tbilisi')
    expect(page).to have_content('Imereti')
  end
end
