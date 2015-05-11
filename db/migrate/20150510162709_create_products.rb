class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products
      t.string :name
      t.float :price
      t.integer :stock
      t.string :description
      t.integer :product_category_id

      t.timestamps
    end
  end
end
