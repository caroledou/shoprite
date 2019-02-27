class RecipesController < ApplicationController
  include RecipesHelper
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:category].present?
      recipes_to_select = Recipe.where(category: params[:category])
      @category = params[:category] # pour passer la category a la vue quand on yike une recette
    else
      recipes_to_select = Recipe.all
    end

    recipes_to_reject = params[:recipe_ids]
    @recipe = select_reject_recipes(recipes_to_select, recipes_to_reject).sample
  end

  def select_reject_recipes(recipes, array_of_ids)
    # methods returns an array of recipes not yiked by user yet
    return recipes if array_of_ids.blank? || all_recipes_skipped?(array_of_ids)
    recipes.reject { |recipe| array_of_ids.include?(recipe.id.to_s) }
  end

end
