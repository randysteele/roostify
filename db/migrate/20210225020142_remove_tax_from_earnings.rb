class RemoveTaxFromEarnings < ActiveRecord::Migration[6.1]
  def change
    remove_column :earnings, :tax, :decimal
  end
end
