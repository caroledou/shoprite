class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    if @order = Order.find_by(user_id: current_user.id, status: 'pending')
      day = find_correct_day(@order)
      creating_composant_and_order_details(@order, @recipe, day)
      raise
      add_recipe_id_to_correct_day(@order, @recipe)
      @order.save!
    else
      recipes = { monday: "", tuesday: "", wednesday: "", thursday: "", friday: "", saturday: "", sunday: "" }
      @order = Order.new(user_id: current_user.id, status: 'pending', recipes: recipes)
      day = find_correct_day(@order)
      creating_composant_and_order_details(@order, @recipe, day)
      recipes[:monday] = @recipe.id
      @order.recipes = recipes
      @order.save!
    end
    redirect_to order_path(@order)
  end

  private

  def find_correct_day(order)
    order.recipes.select { |k, value| order.recipes[k] = value.blank? }.keys.first
  end

  def add_recipe_id_to_correct_day(order, recipe)
    order.recipes.each do |key, value|
      return order.recipes[key] = recipe.id if value == ""
    end
  end

  def creating_composant_and_order_details(order, recipe, day)
    # array_of_recipes = order.recipes.values
    # unless array_of_recipes.include?(recipe.id)
      composants = Composant.where(recipe_id: recipe.id)
      composants.each do |composant|
        order_detail = OrderDetail.new(order: order, composant: composant, day: day)
        order_detail.save!
      end
    # end
  end
end
