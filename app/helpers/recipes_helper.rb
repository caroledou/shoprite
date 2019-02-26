module RecipesHelper
  def all_recipes_skipped?(array_of_ids)
    Recipe.count == array_of_ids.count
  end
end
