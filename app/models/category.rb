class Category < ApplicationRecord
  belongs_to :user
  has_many :category_expenses, dependent: :destroy
  has_many :expenses, through: :category_expenses

  validates :name, presence: true
  validates :icon, presence: true

  def total_amount
    expenses.sum(&:amount)
  end
end
