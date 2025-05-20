class CreateGroceries < ActiveRecord::Migration[8.0]
  def change
    create_table :groceries do |t|
      t.string :name

      t.timestamps
    end
  end
end
