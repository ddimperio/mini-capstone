class Product < ApplicationRecord
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :description, length: { in: 10..500  }

  def is_discounted
    price < 20
  end

  def tax 
    price * 0.09
  end

  def total
    price + tax
  end

  has_many :category_products
  has_many :categories, through: :category_products

  belongs_to :supplier
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  has_many :images
  # def images
  #   Image.where(product_id: id)
  # end

  def image_url_list
    # list = []
    # images.each do |image|
    #   list << image.url
    # end
    # list
    images.map { |image| image.image_url }
  end

  has_many :category_products
  has_many :orders, through: :category_products
end
