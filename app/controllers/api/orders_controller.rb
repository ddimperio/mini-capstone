class Api::OrdersController < ApplicationController
  def create

    product = Product.find_by(id: params[:product_id])


    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: product.price * params[:quantity].to_i,
      tax: product.tax * params[:quantity].to_i,
      total: product.total * params[:quantity].to_i
      )
    if order.save
      render json: {message: 'Order created successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end
end