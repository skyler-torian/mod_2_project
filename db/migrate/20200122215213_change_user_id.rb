class ChangeUserId < ActiveRecord::Migration[6.0]
  def change
    rename_column :user_items, :user_id, :owner_id
  end
end
