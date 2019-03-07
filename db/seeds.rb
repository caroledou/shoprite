require 'open-uri'
require 'json'

puts "Cleaning DB"
Delivery.destroy_all
OrderDetail.destroy_all
Order.destroy_all
User.destroy_all
Composant.destroy_all
Ingredient.destroy_all
Recipe.destroy_all

# ------------------------ USER ------------------------

puts "Creating account carole-albert"

account = User.new(email: "carole-albert@foodlovers.ch", first_name: "Carole", name: "Albert", address: "Rue du Port-Franc 22, 1003 Lausanne", phone_number: "079 546 78 98", password: "123456" )
account.save!

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

  # ------------------------ COMPOSANTS FOR A GIVEN RECIPE ------------------------

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

 # ------------------------ REVIEWS ------------------------

excellent1 = Review.create!(content: "WOW! This was really yummy and easy to make! All the family loved it.", rating: "⭐️⭐️⭐️⭐️⭐️")
excellent2 = Review.create!(content: "Delicious recipe I recommend for cosy diner with friends and family.", rating: "⭐️⭐️⭐️⭐️⭐️")
excellent3 = Review.create!(content: "Looking forward to making this recipe again. Easy and really tasty!", rating: "⭐️⭐️⭐️⭐️⭐️", id: recipe_ids.sample)
excellent4 = Review.create!(content: "BEST. RECIPE. EVER", rating: "⭐️⭐️⭐️⭐️⭐️")
excellent5 = Review.create!(content: "It took me some few hours to cook but this recipe turned out to be AMAZING", rating: "⭐️⭐️⭐️⭐️⭐️")

middle1 = Review.create!(content: "I tried this recipe for a family diner and my kids weren't very impressed...", rating: "⭐️⭐️⭐️")
middle2 = Review.create!(content: "This recipe is OK.", rating: "⭐⭐️️⭐️️️")
middle3 = Review.create!(content: "Not as tasty as expected but globally good.", rating: "⭐️️⭐️⭐️")
middle4 = Review.create!(content: "Convenient food for lazy cook", rating: "⭐️️⭐️️️⭐️")
middle5 = Review.create!(content: "Not worth the cooking time!", rating: "⭐️⭐️")

bad1 = Review.create!(content: "Sorry, I found it bland. Won't be making it again", rating: "⭐️️️")
bad2 = Review.create!(content: "Terrible - worst ever. Waste of my time & money", rating: "⭐️️️")
bad3 = Review.create!(content: "I do not recommend this recipe, it's a disaster...", rating: "⭐️️️")
bad4 = Review.create!(content: "This one was a thumbs down unfortunately, missing something.", rating: "⭐️️️")
bad5 = Review.create!(content: "Followed each step of this recipe and it turned out horrible! Avoid it!", rating: "⭐️️️")

puts "Done!"




