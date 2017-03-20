require 'rails_helper'

feature "authentication" do

  scenario "user registration" do
    visit new_user_registration_path
    fill_in 'First name', with: 'Tom'
    fill_in 'Last name', with: 'Tom'
    fill_in 'Email', with: 'tom@tom.com'
    fill_in 'user_password', with: 'tomtom'
    fill_in 'user_password_confirmation', with: 'tomtom'
    find('input[name="commit"]').click
    expect(current_path).to eq new_user_flight_path(User.last)
    expect(page).to have_content 'New Flight'
  end

  scenario "user login" do
    user = User.new(email: 'tom@tom.com', password: 'tomtom')
    user.save
    visit new_user_session_path
    fill_in 'Email', with: 'tom@tom.com'
    fill_in 'Password', with: 'tomtom'
    find('input[name="commit"]').click
    expect(current_path).to eq new_user_flight_path(user)
    expect(page).to have_content 'New Flight'
  end

  scenario "user sign out" do
    user = User.new(email: 'tom@tom.com', password: 'tomtom')
    user.save
    visit new_user_session_path
    fill_in 'Email', with: 'tom@tom.com'
    fill_in 'Password', with: 'tomtom'
    find('input[name="commit"]').click

    click_link 'Sign Out'
    expect(current_path).to eq root_path
    expect(page).not_to have_content 'Your Flights'
  end

  scenario "redirect non-authenticated user to sign in page" do
    visit user_flights_path(1)
    expect(current_path).to eq new_user_session_path 
    expect(page).to have_content 'Sign In'
  end
end