class AddShopToGroceries < ActiveRecord::Migration[8.0]
  def change
    add_reference :groceries, :shop, null: true, foreign_key: true
  end
end
