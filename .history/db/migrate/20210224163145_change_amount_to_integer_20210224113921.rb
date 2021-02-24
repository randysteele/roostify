class ChangeAmountToInteger < ActiveRecord::Migration[6.1]
  def change
    change_column :earnings, :amount, :integer  
  end
end
