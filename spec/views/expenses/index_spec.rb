require 'rails_helper'

RSpec.feature 'Expenses', type: :feature do
  before :each do
    @user = User.create(name: 'mulie ab', email: 'mulie@ab', password: '123456')
    @category = Category.create(user: @user, name: 'mulie',
                                icon: 'https://www.flaticon.com/svg/static/icons/svg/3144/3144456.svg')
    @transaction = Expense.create(user: @user, name: 'Tomato Soup', amount: 10, categories: [@category])

    visit root_path
    click_link 'Log In'

    within('#new_user') do
      fill_in 'user_email', with: 'mulie@ab'
      fill_in 'user_password', with: '123456'
    end
    click_button 'Log in'
    visit category_expenses_path(@category)
  end

  it 'visits categories page' do
    expect(page).to have_content 'Transactions'
  end

  it 'should have total transactions price' do
    expect(page).to have_content "$#{@transaction.amount}"
  end
end
