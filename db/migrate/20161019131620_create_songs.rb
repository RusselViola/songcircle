class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :title, null: false
      t.integer :rating, default: 0
      t.integer :play_count, default: 0
      t.string :aws_url, null: false
      t.belongs_to :user
      t.timestamps
    end
  end
end
