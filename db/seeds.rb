# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

initial_products = [
  {
    name: "Product 1",
    image: "https://fastly.picsum.photos/id/1054/200/200.jpg?hmac=7qtHUdgOyKxMVpcUELySqbknGm7xI76LbA9CE0uag_o",
    price: 100.00
  },
  {
    name: "Product 2",
    image: "https://fastly.picsum.photos/id/403/200/200.jpg?hmac=GkAppJlJ6MSNvKNo7Hj3Z_I3QTbiwzOtyOJbh6jcZ0U",
    price: 25.00
  },
  {
    name: "Product 3",
    image: "https://fastly.picsum.photos/id/797/200/200.jpg?hmac=-S9mzdkNyeh-FXTUE04cyqzvAV1W2D80OVQtTQHNt-k",
    price: 50.00
  }
]

initial_products.each do |product|
  Product.find_or_create_by!(product) unless Product.where(product).first
end

# Cart

initial_carts = [
  {}
]

initial_carts.each do |cart|
  Cart.find_or_create_by!(cart) unless Cart.where(cart).first
end

# CartItems

initial_cart_items = [
  {
    cart_id: 1,
    product_id: 1,
    quantity: 1
  },
  {
    cart_id: 1,
    product_id: 2,
    quantity: 1
  },
  {
    cart_id: 1,
    product_id: 3,
    quantity: 2
  }
]

initial_cart_items.each do |cart_item|
  CartItem.find_or_create_by!(cart_item) unless CartItem.where(cart_item).first
end
