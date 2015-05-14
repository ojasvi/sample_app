class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :stock
      t.float :price
      t.string :company
      t.string :brand

      t.timestamps
    end
  end
end
