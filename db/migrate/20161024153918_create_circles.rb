class CreateCircles < ActiveRecord::Migration[5.0]
  def change
    create_table :circles do |t|
      t.string :name, null: false
      t.belongs_to :user

      t.timestamps
    end
  end
end
