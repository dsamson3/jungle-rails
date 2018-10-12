class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.string :name
      t.string :email
      t.string :order

      t.timestamps null: false
    end
  end
end
