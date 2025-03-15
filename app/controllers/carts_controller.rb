class CartsController < ApplicationController
  def show
    @cart = Cart.find(params[:id])
  end

  def reset
    @cart = Cart.find(params[:id])
    @cart.cart_items.destroy_all
    redirect_to cart_path(@cart), notice: "Cart has been reset."
  end

  def checkout
    discount = params[:discount]
    Rails.logger.debug "$#{discount} will be discounted!"

    @cart = Cart.find(params[:id])
    @cart.cart_items.destroy_all
    redirect_to cart_path(@cart), notice: "Order placed successfully!"
  end
end
