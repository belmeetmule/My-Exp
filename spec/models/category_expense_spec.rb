require 'rails_helper'

RSpec.describe CategoryExpense, type: :model do
  it { should belong_to(:category) }
  it { should belong_to(:expense) }
end
