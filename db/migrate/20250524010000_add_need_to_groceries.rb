class AddNeedToGroceries < ActiveRecord::Migration[8.0]
  def change
    add_column :groceries, :need_more, :boolean
  end
end
