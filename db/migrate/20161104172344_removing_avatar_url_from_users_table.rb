class RemovingAvatarUrlFromUsersTable < ActiveRecord::Migration[5.0]
  def up
    remove_column :users, :avatar_url
  end
  def down
    add_column :users, :avatar_url, :string
  end
end
