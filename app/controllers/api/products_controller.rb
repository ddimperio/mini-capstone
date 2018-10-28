class Api::ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]
  
  def index
    @products = Product.all

    search_terms = params[:search]
    if search_terms
      @products = @products.where("name ILIKE ?", "%#{search_terms}%")
    end

    @products = @products.order(:id)

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
      description: params["input_description"],
      supplier: params["input_supplier"]
      )
    if  @product.save
      render "show.json.jbuilder"
    else 
      render json: {errors: @product.errors.full_messages}, status: :inprocessable_entity
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name =  params["input_name"] || @product.name
    @product.price =  params["input_price"] || @product.price
    @product.description =  params["input_description"] || @description
    if  @product.save
      render "show.json.jbuilder"
    else 
      render json: {errors: @product.errors.full_messages}, status: :inprocessable_entity
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: {message: "Product has been destroyed"}
  end
end
