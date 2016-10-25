class AddingCircleIdToSongs < ActiveRecord::Migration[5.0]
  def change
    add_column :songs, :circle_id, :integer, null: false
  end
end
