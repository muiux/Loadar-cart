class Cart < ApplicationRecord
  has_many :cart_items, dependent: :destroy
  has_many :products, through: :cart_items
  validates :discount, numericality: { greater_than: 0 }

  def total_price
    cart_items.sum { |item| item.quantity * item.product.price }
  end

  def total_quantity
    cart_items.sum(:quantity)
  end
end
