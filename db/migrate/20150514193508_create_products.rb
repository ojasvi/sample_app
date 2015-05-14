class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.integer :stock
      t.string :permalink
      t.text :description
      t.string :company
      t.string :brand

      t.timestamps
    end
  end
end
