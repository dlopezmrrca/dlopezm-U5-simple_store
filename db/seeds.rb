require "faker"
require "csv"

Product.destroy_all
Category.destroy_all

# This method is used to perform the find or create operation based on the given category_name.
def find_or_create_category(name)
  Category.find_or_create_by(category_name: name)
end


csv_file_path = Rails.root.join('db', 'products.csv')
CSV.foreach(csv_file_path, headers: true) do |row|
  # using find_or_create_by
  category = find_or_create_category(row['category_name'])
  Product.create(
    title: row['title'],
    description: row['description'],
    price: row['price'],
    stock_quantity: row['stock_quantity'],
    category: category
  )
end

# for testing purposes
# Product.create(description: "A product without a title", price: 19.99, stock_quantity: 10) #  fail
# Product.create(title: "Product without price", description: "A great product", stock_quantity: 10) #  fail
# Product.create(title: "Product without stock", description: "A great product", price: 19.99) #  fail
# Product.create(title: "Valid Product", description: "A great product", price: 19.99, stock_quantity: 10) # kawabonga!

# rails db:seed
# rails console
# Product.all
# Product.count
# Product.find_by(title: "Valid Product")
# Product.destroy_by(title: "Valid Product")

# Category.create(category_name: "testing")

# Faker
# 676.times do
#   Product.create(
#     title: Faker::Commerce.product_name,
#     description: Faker::Lorem.paragraph,
#     price: Faker::Commerce.price(range: 0..100.0),
#     stock_quantity: Faker::Number.between(from: 1, to: 100)
#   )
# end
