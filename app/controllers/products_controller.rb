class ProductsController < ApplicationController
  def show
    @products = Product.all
    @cart = Cart.find(1)
  end
end
