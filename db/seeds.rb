require "faker"
require "csv"

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

Category.create(category_name: "testing")

676.times do
  Product.create(
    title: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph,
    price: Faker::Commerce.price(range: 0..100.0),
    stock_quantity: Faker::Number.between(from: 1, to: 100)
  )
end
