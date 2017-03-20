require 'rails_helper'

feature "authentication" do
  let(:attrs){FactoryGirl.attributes_for(:user)}
  let(:user) {FactoryGirl.build(:user)}

  scenario "user registration" do
    visit new_user_registration_path
    fill_in 'First name', with: attrs[:first_name]
    fill_in 'Last name', with: attrs[:last_name]
    fill_in 'Email', with: attrs[:email]
    fill_in 'user_password', with: attrs[:password]
    fill_in 'user_password_confirmation', with: attrs[:password]
    find('input[name="commit"]').click
    expect(current_path).to eq new_user_flight_path(User.last)
    expect(page).to have_content 'New Flight'
  end

  scenario "user login" do
    user.save
    sign_in_as(user.email)
    expect(current_path).to eq new_user_flight_path(user)
    expect(page).to have_content 'New Flight'
  end

  scenario "user sign out" do
    user.save
    sign_in_as(user.email)
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