class AddLocationsToGroceries < ActiveRecord::Migration[8.0]
  def change
    add_column :groceries, :shop_location, :text
    add_column :groceries, :house_location, :text
  end
end
