require 'rails_helper'

RSpec.feature 'Log in', type: :feature do
  before :each do
    @user = User.create(name: 'mulie data', email: 'mulie@gmail.com', password: '123456')
    visit '/users/sign_in'
  end

  it 'splash screen' do
    visit root_path
    expect(page).to have_content 'Log In'
  end

  it 'signs me in' do
    fill_in 'user_email', with: 'mulie@gmail.com'
    fill_in 'user_password', with: '123456'
    click_button 'Log in'
    expect(page).to have_content 'Signed in successfully'
  end

  it 'should not sign me in when the credentials are not correct' do
    fill_in 'user_email', with: 'bademail@bad.com'
    fill_in 'user_password', with: '123456'

    click_button 'Log in'
    expect(current_path).to match new_user_session_path
    expect(page).to have_content 'Invalid Email or password'
  end
end
