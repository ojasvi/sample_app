class Product < ActiveRecord::Base
  has_one :product_categories, dependent: :destroy
end
