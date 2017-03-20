module SignInHelper
  def sign_in_as(email)
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    find('input[name="commit"]').click
  end
end