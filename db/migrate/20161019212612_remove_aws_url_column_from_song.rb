class RemoveAwsUrlColumnFromSong < ActiveRecord::Migration[5.0]
  def change
    remove_column :songs, :aws_url, :string
  end
end
