require 'rails_helper'

RSpec.feature 'Categories', type: :feature do
  before :each do
    @user = User.create(name: 'Mulie Gasha', email: 'abcgem@gmail.com', password: '123456')
    @category = Category.create(user: @user, name: 'martha',
                                icon: 'https://www.flaticon.com/svg/static/icons/svg/3144/3144456.svg')

    visit root_path
    click_link 'Log In'

    within('#new_user') do
      fill_in 'user_email', with: 'abcgem@gmail.com'
      fill_in 'user_password', with: '123456'
    end
    click_button 'Log in'
  end

  it 'visits categories page' do
    expect(current_path).to match categories_path
    expect(page).to have_content 'martha'
  end
end
