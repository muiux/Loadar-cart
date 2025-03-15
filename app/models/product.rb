class Product < ApplicationRecord
  has_many :cart_items
  validates :name, :price, :image, presence: true
end
