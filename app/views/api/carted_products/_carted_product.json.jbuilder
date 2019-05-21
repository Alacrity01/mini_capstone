json.id carted_product.id
json.user_id carted_product.user_id
json.product_id carted_product.product_id
json.quantity carted_product.quantity
json.status carted_product.status

json.user do
  json.partial! carted_product.user, partial: 'api/users/user', as: :user
end

json.product do
  json.partial! carted_product.product, partial: "api/products/product", as: :product
end
