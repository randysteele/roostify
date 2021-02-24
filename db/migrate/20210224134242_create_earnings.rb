class CreateEarnings < ActiveRecord::Migration[6.1]
  def change
    create_table :earnings do |t|
      t.decimal :amount
      t.decimal :tax

      t.timestamps
    end
  end
end
