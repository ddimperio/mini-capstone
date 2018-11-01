class RenameQuanityInCartedProducts < ActiveRecord::Migration[5.2]
  def change
    rename_column :carted_products, :quanity, :quantity
  end
end
