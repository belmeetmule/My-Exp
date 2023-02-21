class Category < ApplicationRecord
  belongs_to :user
  has_many :catagoy_expenses, dependent: :destroy
  has_many :expenses, through: :catagoy_expenses

  validates :name, presence: true
  validates :icon, presence: true
end
