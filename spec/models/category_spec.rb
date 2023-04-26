require 'rails_helper'

RSpec.describe Category, type: :model do
  it { should belong_to(:user) }
  it { should have_many(:category_expenses) }
  it { should have_many(:expenses).through(:category_expenses) }
end
