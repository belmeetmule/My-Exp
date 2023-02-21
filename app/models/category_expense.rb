class CategoryExpense < ApplicationRecord
  belongs_to :catagory
  belongs_to :expense
end
