class DropUserItemsTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :user_items
  end
end
