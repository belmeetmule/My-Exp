class CreateCatagoryExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :catagory_expenses do |t|
      t.references :catagory, null: false, foreign_key: true
      t.references :expense, null: false, foreign_key: true

      t.timestamps
    end
  end
end
