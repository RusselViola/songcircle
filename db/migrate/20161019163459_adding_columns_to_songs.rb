class AddingColumnsToSongs < ActiveRecord::Migration[5.0]
  def change
    add_column :songs, :audio_id, :string
    add_column :songs, :audio_filename, :string
    add_column :songs, :audio_size, :integer
    add_column :songs, :audio_content_type, :string
  end
end
