class StoreController < ApplicationController
  def index
  @products=Product.all
  @cart=current_cart
  #@line_items=@cart.line_items
  #@line_item=LineItem.new
  end
end
