class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  validates :price, presence: true
  validates :price, :numericality => { greater_than_or_equal_to: 0 }
  validates :price, :numericality => { less_than: 10000000 }
  
  validates :description, presence: true

  belongs_to :supplier
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  has_many :images
  # def images
  #   Image.where(product_id: self.id)
  # end

  # has_many :orders
  has_many :product_categories
  has_many :categories, through: :product_categories
  
  has_many :carted_products
  has_many :orders, through: :carted_products
  has_many :users, through: :carted_products

  def is_discounted?
    price < 60
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  def categories
    self.product_categories.map { |product_category| product_category.category }
  end
end
