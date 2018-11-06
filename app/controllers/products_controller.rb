class ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.html.erb"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.html.erb"
  end

  def new 
    render "new.html.erb"
  end

  def create
    @product = Product.new(
      name: params[:form_name],
      price: params[:form_price],
      description: params[:form_description],
      supplier_id: params[:form_supplier]
      )
    @product.save!
    redirect_to "/products/#{@product.id}"
  end

  def edit
    @product = Product.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update 
    @product = Product.find_by(id: params[:id])
    @product.name = params[:form_name]
    @product.price = params[:form_price]
    @product.description = params[:form_description]
    @product.save
    redirect_to "/products"
  end

  def destroy 
    @product = Product.find_by(id: params[:id])
    @product.destroy
    redirect_to "/products"
  end
end
