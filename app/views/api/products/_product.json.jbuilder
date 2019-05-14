json.id product.id
json.name product.name
json.description product.description

json.price product.price
json.tax product.tax
json.total product.total

json.formatted do 
  json.price number_to_currency(product.price)
  json.tax number_to_currency(product.tax)
  json.total number_to_currency(product.total)
end

json.is_discounted product.is_discounted?
if product.is_discounted?
  json.sale_message "This is a good deal."
end
json.in_stock product.in_stock?
if product.in_stock?
  json.stock_message "Jeff is currently offering this service."
end

json.supplier do
  json.partial! product.supplier, partial: "api/suppliers/supplier", as: :supplier
end


json.images do
  json.array! product.images, partial: "api/images/image", as: :image
end

json.current_user current_user #just for testing
