class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @order = Order.new(user_id: current_user.id, status: 'pending')
    @order.save!
    # Need to create the order_details for each composant
    composants = Composant.where(recipe_id: @recipe.id)
    composants.each do |composant|
      order_detail = OrderDetail.new(order: @order, composant: composant)
      order_detail.save!
    end
    redirect_to order_path(@order)
  end
end
