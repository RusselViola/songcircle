class RemovingUserIdAndPuttingItBack < ActiveRecord::Migration[5.0]
  def up
    remove_column :circles, :user_id
  end

  def down
    add_column :circles, :user_id, :integer, null: false
  end
end
