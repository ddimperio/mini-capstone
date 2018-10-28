class AddProductIdToCategoryProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :category_products, :product_id, :integer
  end
end
