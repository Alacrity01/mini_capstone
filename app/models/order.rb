class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :products, through: :carted_products

  def calculate_subtotal(current_user)
    subtotal_sum = 0
    carted_products.each do |carted_product|
      subtotal_sum += carted_product.subtotal  
    end
    subtotal_sum
  end
end
