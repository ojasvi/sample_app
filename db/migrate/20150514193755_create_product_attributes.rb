class CreateProductAttributes < ActiveRecord::Migration
  def change
    create_table :product_attributes do |t|
      t.belongs_to :product, index: true, dependent: :destroy
      t.string :key
      t.float :value
      t.string :desc
      t.integer :product_id
      t.string :permalink

      t.timestamps
    end
  end
end
