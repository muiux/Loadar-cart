class CartItemsController < ApplicationController
  def create
    @cart = Cart.find(params[:id])
    @product = Product.find(params[:product_id])
    @cart_item = @cart.cart_items.find_or_initialize_by(product: @product)
    @cart_item.quantity = (@cart_item.quantity || 0) + 1
    @cart_item.save
    redirect_to params[:redirect_to] || cart_path(@cart)
  end

  def remove
    @cart = Cart.find(params[:id])
    @product = Product.find(params[:product_id])
    @cart_item = @cart.cart_items.find_or_initialize_by(product: @product)
    @cart_item.quantity = (@cart_item.quantity || 1) - 1
    @cart_item.save
    redirect_to params[:redirect_to] || cart_path(@cart)
  end

  def destroy
    @cart_item = CartItem.where(product_id: params[:product_id], cart_id: params[:id])&.first
    @cart_item.destroy
    redirect_to params[:redirect_to] || cart_path(@cart_item.cart)
  end
end
