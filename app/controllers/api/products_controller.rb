class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.json.jbuilder"
  end

  def show
    input_id = params["id"]
    @product = Product.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create 
    @product = Product.new(
      name: params["input_name"],
      price: params["input_price"],
      image_url: params["input_url"],
      description: params["input_description"]
      )
    @product.save
    render "show.json.jbuilder"
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name =  params["input_name"] || @product.name
    @product.price =  params["input_price"] || @product.price
    @product.image_url =  params["input_url"] || @product.image_url
    @product.description =  params["input_description"] || @description
    @product.save
    render "show.json.jbuilder"
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: {message: "Product has been destroyed"}
  end
end
