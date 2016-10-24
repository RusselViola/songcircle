class CreateCircles < ActiveRecord::Migration[5.0]
  def change
    create_table :circles do |t|
      t.string :name, null: false
      t.belongs_to :circle_owner

      t.timestamps
    end
  end
end
