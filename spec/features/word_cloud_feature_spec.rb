require 'spec_helper'

feature 'Word Cloud' do
  scenario 'Users can enter their twitter handle on the home page' do
    visit '/'
    fill_in 'username', with: 'twitter'
    click_button 'Submit'
    expect(page.status_code).to eq 200
  end
end
