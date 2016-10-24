class AddingValidationToBelongsToCircleOwner < ActiveRecord::Migration[5.0]
  def change
    change_column :circles, :circle_owner_id, :integer, null: false
  end
end
