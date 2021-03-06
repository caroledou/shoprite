class DeliveriesController < ApplicationController
  def show
    @delivery = Delivery.find(params[:id])
    @order = @delivery.order
  end

  def new
    @order = Order.find(params[:order_id])
    @delivery = Delivery.new
    @delivery.address = current_user.address
  end

  def create
    @order = Order.find(params[:order_id])
    @delivery = Delivery.new(delivery_params)
    @delivery.user = current_user
    @delivery.order = @order
    if @delivery.save
      redirect_to delivery_path(@delivery.id)
    else
      render :new
    end
  end

  def delivery_params
    params.require(:delivery).permit(:order_id, :user_id, :status, :delivery_date, :address)
  end
end
