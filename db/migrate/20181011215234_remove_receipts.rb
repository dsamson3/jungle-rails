class RemoveReceipts < ActiveRecord::Migration
  def change
    drop_table :receipts
  end
end
