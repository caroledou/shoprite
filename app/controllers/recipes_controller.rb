class RecipesController < ApplicationController
  include RecipesHelper

  def index
    recipe_ids = params[:recipe_ids]
    @recipe = select_unshown_recipes(recipe_ids).sample
  end

  def select_unshown_recipes(array_of_ids)
    # methods returns an array of recipes not yiked by user yet
    return Recipe.all if array_of_ids.blank? || all_recipes_skipped?(array_of_ids)
    Recipe.all.reject{ |recipe| array_of_ids.include?(recipe.id.to_s) }
  end
end
