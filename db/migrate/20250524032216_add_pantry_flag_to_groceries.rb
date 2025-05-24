class AddPantryFlagToGroceries < ActiveRecord::Migration[8.0]
  def change
    add_column :groceries, :in_pantry, :boolean
  end
end
