class RecipesController < ApplicationController
  def index
    recipe_ids = params[:recipe_ids]
    @recipe = select_unshown_recipes(recipe_ids).sample

  end

  private

  def select_unshown_recipes(array_of_ids)
    # methods returns an array of recipes not yiked by user yet
    return Recipe.all if array_of_ids.blank? || Recipe.count == array_of_ids.count
    Recipe.all.reject{ |recipe| array_of_ids.include?(recipe.id.to_s) }
  end
end
