require 'rails_helper'

RSpec.describe Expense, type: :model do
  context 'Assocation' do
    it { should belong_to(:user) }
    it { should have_many(:category_expenses) }
    it { should have_many(:categories).through(:category_expenses) }
  end
end
