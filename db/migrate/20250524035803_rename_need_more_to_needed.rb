class RenameNeedMoreToNeeded < ActiveRecord::Migration[8.0]
  def change
    rename_column :groceries, :need_more, :needed
  end
end
