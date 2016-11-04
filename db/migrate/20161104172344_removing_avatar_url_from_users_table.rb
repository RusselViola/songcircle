class RemovingAvatarUrlFromUsersTable < ActiveRecord::Migration[5.0]
  def up
    remove_column :users, :profile_image_id
  end
  def down
    add_column :users, :profile_image_id, :string
  end
end
