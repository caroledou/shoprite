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
    Recipe.find(id).name if id != ""
  end
end
