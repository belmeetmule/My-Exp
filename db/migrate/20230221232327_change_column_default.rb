class ChangeColumnDefault < ActiveRecord::Migration[7.0]
  def change
    change_column_default :categories, :icon, 'https://coffee.alexflipnote.dev/random'
  end
end
