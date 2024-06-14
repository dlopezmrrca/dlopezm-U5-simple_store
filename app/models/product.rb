class Product < ApplicationRecord
  belongs_to :category
  validates :title, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :stock_quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end

# title must be present.
#price must be present and a number greater than or equal to 0.
#stock_quantity must be present and an integer greater than or equal to 0.
