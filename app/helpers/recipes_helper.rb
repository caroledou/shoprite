module RecipesHelper
  def all_recipes_skipped?(array_of_ids)
    Recipe.count == array_of_ids.count
  end

  def array_of_burned_ids(params_array)
    recipe_ids = []
    return recipe_ids << @recipe.id if params_array.nil? || all_recipes_skipped?(params_array)
    recipe_ids << params_array
    recipe_ids << @recipe.id
    return recipe_ids.flatten
  end

  def display_recipe_name(id)
    return "" if id == ""
    recipe = Recipe.find(id).name if id != ""
    recipe.length > 25 ? "#{recipe.first(25)}..." : recipe
  end

  def display_price_recipe(id)
    s = 0
    Composant.where(recipe_id: id).each { |c| s += c.price_cents}
    return s
  end

  def display_cooking_time(id)
    recipe = Recipe.find(id).cooking_time
    if recipe >= 60
      return "#{recipe/60}h"
    else
      recipe
    end
  end
end
