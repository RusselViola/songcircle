class AddImageIdAndMetadataToUsersTable < ActiveRecord::Migration[5.0]
  def up
    add_column :users, :profile_image_id, :string
    add_column :users, :profile_image_filename, :string
    add_column :users, :profile_image_size, :integer
    add_column :users, :profile_image_content_type, :string
  end
  def down
    remove_column :users, :profile_image_id, :string
    remove_column :users, :profile_image_filename, :string
    remove_column :users, :profile_image_size, :integer
    remove_column :users, :profile_image_content_type, :string
  end
end
