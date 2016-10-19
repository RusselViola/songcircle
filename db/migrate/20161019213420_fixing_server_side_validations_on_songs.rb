class FixingServerSideValidationsOnSongs < ActiveRecord::Migration[5.0]
  def change
    change_column :songs, :user_id, :integer, null: false
    change_column :songs, :audio_id, :string, null: false
  end
end
