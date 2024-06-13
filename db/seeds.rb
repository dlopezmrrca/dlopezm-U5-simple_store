# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Product.create(description: "A product without a title", price: 19.99, stock_quantity: 10) #  fail
Product.create(title: "Product without price", description: "A great product", stock_quantity: 10) #  fail
Product.create(title: "Product without stock", description: "A great product", price: 19.99) #  fail
Product.create(title: "Valid Product", description: "A great product", price: 19.99, stock_quantity: 10) # kawabonga!

# rails db:seed
# rails console
# Product.all
# Product.count
# Product.find_by(title: "Valid Product")
# Product.destroy_by(title: "Valid Product")
