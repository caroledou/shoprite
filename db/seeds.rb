require 'open-uri'
require 'json'

puts "Cleaning DB"
Delivery.destroy_all
OrderDetail.destroy_all
Order.destroy_all
Composant.destroy_all
Ingredient.destroy_all
Recipe.destroy_all

# ------------------------ RECIPES SEED ------------------------

puts "Parsing 188 Recipe IDs from 12 Categories..."

recipe_id_db = []

Recipe::RECIPE_CATEGORIES.each do |category|
  url = "https://www.themealdb.com/api/json/v1/1/filter.php?c=#{category}"
  categ_serialized = open(url).read
  categ = JSON.parse(categ_serialized)
  array_recipe_id = categ["meals"].map do |e|
    e["idMeal"].to_i
  end
  array_recipe_id.each do |id|
    recipe_id_db << id
  end
end

puts "Done!"
puts "Creating Recipes Database... this will take a while..."
puts "...."
puts "------------------------------------------"

recipe_counter = 0

recipe_id_db.each do |id|
  url_recipe = "https://www.themealdb.com/api/json/v1/1/lookup.php?i=#{id}"
  recipe_serialized = open(url_recipe).read
  recipe = JSON.parse(recipe_serialized)

  new_recipe = Recipe.new(
    name: recipe["meals"].first["strMeal"],
    category: recipe["meals"].first["strCategory"],
    description: recipe["meals"].first["strInstructions"],
    cooking_time: rand(30..60).to_i)

  photo = recipe["meals"].first["strMealThumb"]
  new_recipe.remote_photo_url = photo
  new_recipe.save!

  recipe_counter += 1
  puts "Recipe #{recipe_counter} created"

  # ------------------------ COMPOSANDS FOR A GIVEN RECIPE ------------------------

  puts "...."
  puts "Creating Composants for recipe #{recipe_counter}..."

  composant_counter = 0

  (1..20).each do |number|
    recipe = "https://www.themealdb.com/api/json/v1/1/lookup.php?i=#{recipe['meals'].first['idMeal']}"
    recipe_serialized = open(url_recipe).read
    recipe = JSON.parse(recipe_serialized)

    if recipe["meals"].first["strIngredient#{number}"] != ""
      new_composant = Composant.new(
        recipe_id: new_recipe.id,
        ingredient: recipe["meals"].first["strIngredient#{number}"],
        quantity: recipe["meals"].first["strMeasure#{number}"],
        price_cents: rand(100..2000)/100.round.to_i
      )
      new_composant.save!
      composant_counter += 1
      p "Composant #{composant_counter} for recipe #{recipe_counter} created!"
    end
  end
    puts "....."
    puts "All composants for recipe #{recipe_counter} created"
    puts "------------------------------------------"

end

puts "Recipes Database created!"
puts "Composants Database created!"
puts "---------------------"


