class ProductsController < ApplicationController

  before_action :set_products, only: [:show, :edit,:update, :destroy]

  def index
    @products = Product.all #why can't change to @product #
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save

      redirect_to(product_path(@product))
    else
      render('new')

    end
  end

  def edit
  end

  def update
    @product.update_attributes(product_params)
    redirect_to(product_path(@product))
  end

  def show

  end

  def destroy

     @product.destroy
     redirect_to(products_url) #why can't use render('root')
  end

  def set_products
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:title,:description,:image_url,:price)
  end

end
