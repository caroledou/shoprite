class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
  end

  def create
    # Find exists already a pending order
    if order_pending = Order.find_by(user_id: current_user.id, status: 'pending')
    # Use the pending order
      @order = order_pending
    else
      @order = Order.new(user_id: current_user.id, status: 'pending')
      @order.save!
    end
    # array vide
    @recipes = []
    # ajoute recette de params si pas deja array
    @recipe = Recipe.find(params[:recipe_id])
    unless @recipes.include?(@recipe)
      @recipes.push(@recipe)
    # Need to create the order_details for each composant
      composants = Composant.where(recipe_id: @recipe.id)
      composants.each do |composant|
        order_detail = OrderDetail.new(order: @order, composant: composant)
        order_detail.save!
      end
    end
    redirect_to order_path(@order, @recipes)
  end
end
