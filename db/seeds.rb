require 'open-uri'
require 'json'

puts "Cleaning DB"
Review.destroy_all
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

Recipe::RECIPE_CATEGORIES.take(1).each do |category|
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

    if recipe["meals"].first["strIngredient#{number}"] != "" && recipe["meals"].first["strIngredient#{number}"] != nil
      if recipe["meals"].first["strMeasure#{number}"].start_with?(/^[1-9]/)
        quantity = recipe["meals"].first["strMeasure#{number}"]
      else
        quantity = rand(1..7).to_i
      end
      price = rand(1..2)
      new_composant = Composant.new(
        recipe_id: new_recipe.id,
        ingredient: recipe["meals"].first["strIngredient#{number}"],
        quantity: quantity,
        price_cents: price,
        # price_cents: rand(0.1..2).to_i
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

puts "Creating reviews"

contents = ["WOW! This was really yummy and easy to make! All the family loved it ⭐️️⭐️️⭐️️⭐️️⭐️ ",
  "Delicious recipe I recommend for cosy diner with friends and family ⭐️️️️⭐️️⭐️️⭐️",
  "Looking forward to making this recipe again. Easy and really tasty! ⭐️️️️⭐️️⭐️️⭐️",
  "BEST. RECIPE. EVER ⭐️️⭐️️⭐️️⭐️️⭐️",
  "It took me some few hours to cook but this recipe turned out to be AMAZING ⭐️️⭐️️⭐️️⭐️️⭐️",
  "I tried this recipe for a family diner and my kids weren't very impressed... ⭐️️⭐️⭐️⭐️",
  "This recipe is OK ⭐️⭐️⭐️",
  "Not as tasty as expected but globally good ⭐️⭐️⭐️",
  "Convenient food for lazy cook ⭐️️⭐️⭐️⭐️",
  "Not worth the cooking time! ⭐️️⭐️️",
  "Sorry, I found it bland. Won't be making it again ⭐️",
  "Terrible - worst ever. Waste of my time & money ⭐️️",
  "I do not recommend this recipe, it's a disaster... ⭐️️",
  "This one was a thumbs down unfortunately, missing something ⭐️⭐️",
  "Followed each step of this recipe and it turned out horrible! Avoid it! ⭐️️"
]

3.times do
  Recipe.all.each do |recipe|
    recipe.reviews.create(
        content: contents.sample,
      )
  end
end

puts "Done!"

