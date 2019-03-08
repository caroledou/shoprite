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

contents = ["WOW! This was really yummy! All the family loved it -- ⭐️️⭐️️⭐️️⭐️️⭐️ ",
  "Delicious recipe I recommend for cosy diner with friends -- ⭐️️️️⭐️️⭐️️⭐️",
  "Looking forward to making this recipe again. Easy and tasty! -- ⭐️️️️⭐️️⭐️️⭐️",
  "BEST. RECIPE. EVER -- ⭐️️⭐️️⭐️️⭐️️⭐️",
  "Take time to cook but this recipe turned out to be AMAZING -- ⭐️️⭐️️⭐️️⭐️️⭐️",
  "I tried this recipe and my kids weren't very impressed... -- ⭐️⭐️",
  "This recipe is OK -- ⭐️⭐️⭐️",
  "Not as tasty as expected but globally good -- ⭐️⭐️⭐️",
  "Convenient food for lazy cook -- ⭐️️⭐️⭐️⭐️",
  "Not worth the cooking time! -- ⭐️️⭐️️",
  "Sorry, I found it bland. Won't be making it again -- ⭐️",
  "Terrible - worst ever. Waste of my time & money -- ⭐️️",
  "I do not recommend this recipe, it's a disaster... -- ⭐️️",
  "This one was a thumbs down unfortunately, missing something -- ⭐️⭐️",
  "Followed each step of this recipe, turned out horrible! -- ⭐️️"
]
avatars = [
  "http://www.roblaceyphotographer.co.uk/wp-content/uploads/2017/02/Headshot-square.jpg",
  "http://www.hilbgroup.com/wp-content/uploads/2018/03/hilb-group-headshots-6617-web-square.jpg",
  "https://philadelphiacorporateheadshots.org/wp-content/gallery/people/True-Capital-July-2014-36-Square.jpg",
  "https://jkaplanortho.com/wp-content/uploads/2018/10/dr-kaplan-headshot-square.jpg",
  "https://www.boutiquephotographer.net/wp-content/uploads/2015/04/WORK_Headshot-Square.003_WEB.jpg",
  "https://www.christenseninstitute.org/wp-content/uploads/2018/08/Mark-Johnson-Headshot-Square.jpg",
  "https://lyrictheatreokc.com/wp-content/uploads/2015/09/Geno-Square-Headshot.jpeg",
  "https://www.surfmedia.com/wp-content/uploads/2014/07/Camron-headshot-square.jpg",
  "http://www.homexpertsuk.com/wp-content/uploads/2016/10/headshot-colour-1-square.jpg",
  "https://halifaxcomedyfest.ca/wp-content/uploads/2018/11/andrew-barr-headshot-2015-SQUARE-1.jpg",
  "https://1e28aybmvig19yc0648l8lth-wpengine.netdna-ssl.com/wp-content/uploads/2015/07/Mark-2012-Headshot-Square.jpg",
  "https://billgladwelllive.com/wp-content/uploads/2018/07/cropped-Bill-Gladwell-%E2%80%94-Outside-Headshot-%E2%80%94-Square.jpg",
  "http://www.ramahsportsacademy.org/wp-content/uploads/2018/10/Mendy-Headshot-Square-2018.jpg",
  "https://dstudiosphotography.com/wp-content/uploads/2015/09/headshot-ciran-square.jpg",
  "https://automatedinsights.com/wp-content/uploads/2018/05/headshot-square-asmith.jpg",
  "https://www.cncf.io/wp-content/uploads/2017/09/Headshots-282-Square.jpg",
  "https://images-na.ssl-images-amazon.com/images/I/61NJ7HxHPrL._UX250_.jpg",
  "https://karencampbellphoto.com/wp-content/gallery/headshots/IMG_0199-Edit2_square_web.jpg",
  "https://www.college.columbia.edu/alumni/sites/default/files/David%20Barry%20Headshot%20-%20JJ%20Dinner%202017%20--%20SQUARE.jpg",
  "https://ww1.prweb.com/prfiles/2017/05/17/15170775/gI_62627_Kevin%20Harrigan.png",
  "https://blacksmithroofing.com/wp-content/uploads/2017/10/Cylas-Square-Headshot-1-of-1.jpg",
  "http://thebluepaper.com/wp-content/uploads/bud-navero-headshot-square.jpg",
  "https://gocrossway.org/wp-content/uploads/2018/02/Moses-2-20170912_140103-square-headshot.png",
  "http://www.sovereignrisksolutions.com/wp-content/uploads/2016/01/square-Taylor-Westbrook-Headshot-768x768.jpg",
  "http://www.parisoma.com/system/images/W1siZiIsIjIwMTgvMDkvMjgvNDNyZnN6Zmp2MF9Kb2VfSGVhZHNob3RfU3F1YXJlX0hSXzEuanBnIl1d/Joe_Headshot-Square-HR-1.jpg",
  "http://static.squarespace.com/static/52e84526e4b0713dd6db1cdd/5337a883e4b0fa0f8f50e47a/5342e7bae4b0cccdfc3cd7b8/1396893627863/headshotsquaresmall.jpg?format=750w",
  "http://airan-lab.stanford.edu/wp-content/uploads/2016/11/AiranRD-headshot-square-300x300.jpg",
  "https://ne9dcc0wbd-flywheel.netdna-ssl.com/wp-content/uploads/2015/11/synergy_headshots_medaest_square_drcollins-300x300.jpg",
  "http://www.parisoma.com/system/images/W1siZiIsIjIwMTgvMDkvMjgvNWN3cXJjNzRtbl9QaWVycmVfSGVhZHNob3RfU3F1YXJlX0hSXzEuanBnIl1d/Pierre_Headshot_Square-HR-1.jpg",
  "https://cities-today.com/wp-content/uploads/2019/02/StefanSchaffer_Headshot_Square_FINAL-1024x1024.jpg",
  "https://cdn2.sportngin.com/attachments/roster_player_info/b0cf-110880334/TOCA_Headshot_Square_medium.jpg",
  "https://www.ridgewine.com/wp-content/uploads/2016/02/paul-headshot-square.jpg",
  "https://cdn3.sportngin.com/attachments/roster_player_info/1033/3686/David_Reppucci_Headshot_Square_medium.jpg",
  "https://pros.weddingwire.com/hs-fs/hubfs/Alan%20Berg-headshot-square%20200x200.jpg?width=200&height=200&name=Alan%20Berg-headshot-square%20200x200.jpg",
  "https://static1.squarespace.com/static/598c8d49f5e23146af538e93/t/5a00a73171c10beb61f322ab/1509992247455/Tom-Severini---Jean-Headshot-Square.jpg?format=500w",
  "https://static1.squarespace.com/static/57bf08f0b3db2b9f084ac5eb/t/5c06dbdf4d7a9cdeb595da4c/1543953395076/Headshot+-+square.jpg",
  "https://www.college.columbia.edu/alumni/sites/default/files/Toomas%20Hendrik%20Ilves%20Headshot%20Cropped%20-%20JJ%20Dinner%202017%20-%20Credit%20Hindrek%20Maasik%20--%20SQUARE.jpg",
  "http://csforum2013.com/wp-content/uploads/2013/04/kristina-headshot-square-624x609.png",
  "http://girliemom.com/wp-content/uploads/2014/09/Headshots-square-1.jpg",
  "https://aladygoeswest.com/wp-content/uploads/2015/02/Ashley-Pitt-headshot-square.jpg",
  "https://www.medvetforpets.com/wp-content/uploads/2017/05/Gade-headshot-square-1.jpg",
  "https://orgcommunity.com/wp-content/uploads/2018/05/Website-Headshot-Square-Format-1.png",
  "https://vacationmavens.com/wp-content/uploads/2015/12/Headshot-Square-StuffedSuitcase.jpg",
  "http://thecivicedge.com/wp-content/uploads/2018/07/Anouk-Versavel-Headshot-Square.jpg",
  "http://ecdental.org/wp-content/uploads/2018/03/employee-headshot-Philadelphia-185.jpg",
  "http://legalhotlines.org/wp-content/uploads/sites/6/2016/12/Ellen-Cheek-Headshot-Square-min.png",
  "http://www.greengaragedetroit.com/site/wp-content/uploads/2017/10/Gracie-Headshot-square-1.png",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR13Wcn7T-IZ98Tcjbm83vaKciFb9OeQXptPKn3sS5AbcHxTOs",
  "https://customerex2018.aci.aero/wp-content/uploads/2018/08/Starr-Cunningham-Headshot-2018-square.jpg",
  "https://www.disabilityrightswa.org/wp-content/uploads/2018/07/Anna-Square-Headshot.jpg",
  "http://www.momentumsolutionsteam.com/wp-content/uploads/2017/03/Denise-headshot-square.jpg",
  "https://orami.org/wp-content/uploads/sites/32/2018/07/elana-headshot-square.jpg",
  "https://thestemlaboratory.com/wp-content/uploads/2015/11/kelly-square-headshot-1.jpeg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUMaJxlrTmbfPdQLclLOH1kkKyoKOge7BHsBscc5wXtQIAgNoDzw",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFt0fGIBUCipW16qa36YiLjxYiDlmjU1l_kHMqebmdyakKsIBX",
  "https://goldoller.com/wp-content/uploads/2016/03/jill-headshot-square.jpg",
  "https://www.famhealthcare.org/wp-content/uploads/2015/04/Jill-Head-Shot.jpg",
  "https://dml-group.com/wp-content/uploads/2018/09/dml-group-headshots-11Sept18-02-IMG_3141ss-square-bw-e1537534008592.jpg",
  "https://bodhispiritualcenter.org/wp-content/uploads/2016/08/Joan-headshot-square.jpg",
  "https://www.surfmedia.com/wp-content/uploads/2018/03/Caitlin-Headshot-square.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4QX33kLPuKQ4uH--ncIKkii50lJ39Clnz0JXtHwOnnI-VfBNB",
  "https://www.revolutionpr.com/wp-content/uploads/2016/11/Use-this-headshot-for-the-website-Zaina-Copy-square.jpg",
  "https://www.uprisingtheatreco.com/wp-content/uploads/2017/08/Sulentic-Maggie-Mae.jpg",
  "https://arthausdecorah.org/wp-content/uploads/2016/08/Geier-Headshot-Square-400x400.jpg",
  "https://static1.squarespace.com/static/5a6f9af7268b966fdfcff367/t/5b18528803ce64e055c88f98/1528320657142/lauren+headshot+square+pixels+%281%29.jpg",
  "https://static1.squarespace.com/static/52b7e285e4b0f630e3bafa05/58730aced1758e4368de9c5e/58730acf2994ca0ccdef5b44/1483934428434/Headshot+-+Square.jpg?format=500w",
  "https://www.thoughtco.com/thmb/aUMN6WNeySX4uffIhNN6ZYwmwP8=/768x0/filters:no_upscale():max_bytes(150000):strip_icc()/R-Flynn-headshot-square-copy-56a7359b3df78cf7729352e4.jpg",
  "https://wecollide.net/wp-content/uploads/2017/09/010-square-headshots-2017-jen-fox_-1024x1024.jpg",
  "https://acceleprise.vc/wp-content/uploads/2017/12/fullsizeoutput_273.jpeg",
  "https://s3-us-west-2.amazonaws.com/rets-mls/advisors/header_images/000/000/148/medium/Tiffany_Headshot_Square_Color_adjust.jpg?1519949919",
  "http://www.annerogersrealtygroup.com/assets/img/realtors/Sondra%20Headshot%20SQUARE.jpg?Action=thumbnail&algorithm=fill_proportional&width=240&height=240",
  "https://www.thefield.org/sites/default/files/Jennifer%20Cenda%C3%B1a%20Armas%20headshot%20square.jpg",
  "https://www.bandcfinancial.com/wp-content/uploads/2018/12/Genny-Headshot-Crop-Square-300x300.jpg",
  "https://payload.cargocollective.com/1/9/317970/13619359/Proske_headshot_Square_670.jpg",
  "https://refb.org/wp-content/uploads/2018/03/RFB-HEADSHOTS_-46-Square.jpg",
  "http://thecivicedge.com/wp-content/uploads/2018/07/Cheryl-Reiss-Headshot-Square.jpg",
  "https://rockhealth.com/wp-content/uploads/2015/07/halle-headshot-square-2.jpg"
]

reviewer = avatars.sample

2.times do
  Recipe.all.each do |recipe|
    recipe.reviews.create(
        content: contents.sample,
        rating: reviewer
      )
  end
end

puts "Done!"

