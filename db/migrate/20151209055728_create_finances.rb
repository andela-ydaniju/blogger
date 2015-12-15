class CreateFinances < ActiveRecord::Migration
  def change
    create_table :finances do |t|
      t.integer :acct_no

      t.timestamps null: false
    end
  end
end
