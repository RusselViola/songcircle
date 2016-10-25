class CreateCircleRoster < ActiveRecord::Migration[5.0]
  def change
    create_table :circle_rosters do |t|
      t.belongs_to :user
      t.belongs_to :circle

      t.timestamps
    end
  end
end
