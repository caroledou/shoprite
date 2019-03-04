class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    # Find exists already a pending order
    if @order = Order.find_by(user_id: current_user.id, status: 'pending')
      array_of_recipes = @order.recipes.values
      unless array_of_recipes.include?(@recipe.id)
      # Need to create the order_details for each composant
        composants = Composant.where(recipe_id: @recipe.id)
        composants.each do |composant|
          order_detail = OrderDetail.new(order: @order, composant: composant)
          order_detail.save!
        end
      end
      add_recipe_id_to_correct_day(@order, @recipe)
      @order.save!
    else
      recipes = {
        monday: "",
        tuesday: "",
        wednesday: "",
        thursday: "",
        friday: "",
        saturday: "",
        sunday: ""
      }
      @order = Order.new(user_id: current_user.id, status: 'pending', recipes: recipes)
      array_of_recipes = @order.recipes.values
      unless array_of_recipes.include?(@recipe.id)
      # Need to create the order_details for each composant
        composants = Composant.where(recipe_id: @recipe.id)
        composants.each do |composant|
          order_detail = OrderDetail.new(order: @order, composant: composant)
          order_detail.save!
        end
      end
      recipes[:monday] = @recipe.id
      @order.recipes = recipes
      @order.save!
    end
    # ajoute recette de params si pas deja array
    redirect_to order_path(@order)
  end

  def add_recipe_id_to_correct_day(order, recipe)
    order.recipes.each do |key, value|
      return order.recipes[key] = recipe.id if value == ""
    end
  end
end
