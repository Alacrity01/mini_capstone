# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# supplier = Supplier.new(name: "Google", email: "google@google.com", phone_number: "302-555-9111")
# supplier.save

# supplier = Supplier.new(name: "Amazon", email: "amazon@amazon.com", phone_number: "303-555-9191")
# supplier.save

# supplier = Supplier.new(name: "Mozilla", email: "mozilla@firefox.com", phone_number: "304-555-9119")
# supplier.save

# id_array = [3, 5, 6, 4, 7, 1, 10, 11, 2]
# supplier_array = [1, 2, 3]
# products = Product.all

# products.each do |product|
#   product.supplier_id = supplier_array.sample
#   product.save
# end

# products = Product.all

# products.each do |product| 
#   image = Image.new(url: product.image_url, product_id: product.id)
#   image.save
# end

# create category 3 and 4
# Category.create(name: "budget items")
# Category.create(name: "perishables")

# budget items
# ProductCategory.create(product_id: 5, category_id: 3) 
# ProductCategory.create(product_id: 6, category_id: 3) 
# ProductCategory.create(product_id: 4, category_id: 3) 
# ProductCategory.create(product_id: 1, category_id: 3)
# ProductCategory.create(product_id: 10, category_id: 3) 
# ProductCategory.create(product_id: 13, category_id: 3)

# services
# ProductCategory.create(category_id: 1, product_id: 3)
# ProductCategory.create(category_id: 1, product_id: 5)
# ProductCategory.create(category_id: 1, product_id: 6) 
# ProductCategory.create(category_id: 1, product_id: 4) 
# ProductCategory.create(category_id: 1, product_id: 7)  
# ProductCategory.create(category_id: 1, product_id: 10) 
# ProductCategory.create(category_id: 1, product_id: 2) 
# ProductCategory.create(category_id: 1, product_id: 12)

Product.create(name: "Two cents cookies", price: 8, description: "It's like a fortune cookie but instead of a fortune you get Jeff's two cents.", supplier_id: 3)