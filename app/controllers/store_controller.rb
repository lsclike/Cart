class StoreController < ApplicationController
  def index
    @products = Product.order(price: "desc" )
  end
end
