# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning DB"
Composant.destroy_all
Ingredient.destroy_all
Recipe.destroy_all

# puts "Creating 7 recipes"

# url = "https://assets.afcdn.com/recipe/20151023/223_w300h400c1cx1872cy2808.jpg"
# lasagne = Recipe.new(name: 'Lasagnes traditionnelles italiennes', category: 'Lasagne', description: "Cette recette peut paraitre surprenante!", cooking_time: 60)
# lasagne.remote_photo_url = url
# lasagne.save!

# url = "https://image.afcdn.com/recipe/20160404/36766_w420h344c1cx1500cy1288.jpg"
# soupe = Recipe.new(name: 'Soupe de champignons', category: 'Soupe', description: 'Une bonne soupe automnale que vous pouvez accompagner de croûtons de pain grillé.', cooking_time: 40)
# soupe.remote_photo_url = url
# soupe.save!

# url = "https://assets.afcdn.com/recipe/20160711/18915_w300h400c1cx2357cy2165.jpg"
# fondant = Recipe.new(name: 'The fondant au chocolat sucré-salé', category: "Dessert", description: "On peut en faire une version aux fruits!", cooking_time: 35)
# fondant.remote_photo_url = url
# fondant.save!

# url = "https://assets.afcdn.com/recipe/20160908/23686_w300h400c1.jpg"
# poulet = Recipe.new(name: 'Ailerons de poulet confits au miel', category: "Plat", description: "Plat très facile et surtout très bon marché.", cooking_time: 65)
# poulet.remote_photo_url = url
# poulet.save!

# url = "https://assets.afcdn.com/recipe/20160623/27381_w420h344c1cx998cy1500.jpg"
# salade1 = Recipe.new(name: 'Salade de pâtes aux poires, au gorgonzola et aux noix', category: "Salade", description: "Une salade fraiche avec des ingredients mediterrannees", cooking_time: 20)
# salade1.remote_photo_url = url
# salade1.save!

# url = "https://image.afcdn.com/recipe/20170424/31220_w420h344c1cx2656cy1494.jpg"
# salade2 = Recipe.new(name: 'Salade complète', category: "Salade", description: "Salade riche en proteines avec des haricots et la viande")
# salade2.remote_photo_url = url
# salade2.save!

# url = "https://image.afcdn.com/recipe/20170406/63820_w420h344c1cx1584cy2376.jpg"
# salade3 = Recipe.new(name: 'Salade de thon', category: "Salade", description: "Salade ideal pour le printemps ou l'ete, facile a digerer")
# salade3.remote_photo_url = url
# salade3.save!



puts "Creating 4 Curry-based recipes..."
url = "https://img.buzzfeed.com/video-api-prod/assets/dc21b5e545aa4c73ab3e1ec53ce9ad78/fb_thumb.jpg?output-quality=60&resize=600:*"
curry1 = Recipe.new(name: 'Tofu Tikka Masala', category:, 'Curry', description: 'Dish of chunks of roasted marinated tofu (tofu tikka) in a spiced curry sauce. The sauce is usually creamy and orange-coloured', cooking_time: 45)
curry1.remote_photo_url = url
curry1.save!

url = "https://img.buzzfeed.com/video-api-prod/assets/e0852050640d4474aaf3542d61f2568a/FB.jpg?output-quality=60&resize=600:*"
curry2 = Recipe.new(name: 'Chicken Tikka Biryani', category:, 'Curry', description: 'Boneless chicken baked using skewers on a brazier (angeethi) after marinating in Indian spices and dahi (yogurt); originally from the Punjab region', cooking_time: 55)
curry2.remote_photo_url = url
curry2.save!

url = "https://img.buzzfeed.com/video-api-prod/assets/0e036a2a94f84a15895b7a4e6b759717/BFV14763_TonkatsuCurry-ThumbB1080.jpg?output-quality=60&resize=600:*"
curry3 = Recipe.new(name: 'Japanese Pork Cutlet (Tonkatsu)', category:, 'Curry', description: 'Readed, deep-fried pork cutle served with curry sauce', cooking_time: 60)
curry3.remote_photo_url = url
curry3.save!

url = "https://img.buzzfeed.com/video-api-prod/assets/e61803b8efd84ca680a7769a52650830/BFV15753_Slow_Cooker_Butter_Chicken_Textless_Thumbnail.jpg?output-quality=60&resize=600:*"
curry4 = Recipe.new(name: 'Slow Cooker Butter Chicken', category:, 'Curry', description: 'Marinated chicken with a rich spice mixture, cooked in a tandoor, served in a mild curry sauce rich in butter', cooking_time: 40)
curry4.remote_photo_url = url
curry4.save!

puts "Created!"

puts "Creating 4 Pasta recipes..."
url = "https://img.buzzfeed.com/video-api-prod/assets/9ee2dadcbfcb4095872e6cdbaa24ff14/Thumb_A_FB.jpg?output-quality=60&resize=600:*"
pasta1 = Recipe.new(name: 'One-Pot Lemon Garlic Shrimp Pasta', category:, 'Pasta', description: 'This easy 30-minute pasta recipe transforms ingredients that you already have in your kitchen into a posh, seafood dish you’ll want to serve at your next dinner party. And since the whole dish is made in a single pot, clean-up is easy. Don’t be surprised if this becomes your favorite quick go-to.', cooking_time: 30)
pasta1.remote_photo_url = url
pasta1.save!

url = "https://img.buzzfeed.com/video-api-prod/assets/0ea70bbbff66482f93f6adec328f0450/BFV14079_ChickenParmLasagna-ThumbTextless1080.jpg?output-quality=60&resize=600:*"
pasta2 = Recipe.new(name: 'Chicken Parm Lasagna', category:, 'Pasta', description: 'A different Lasagna, stuffed with delicious crumbreaded chicken breasts', cooking_time: 30)
pasta2.remote_photo_url = url
pasta2.save!

url = "https://img.buzzfeed.com/video-api-prod/assets/e1119589710f4cc19266fc5f05448933/BFV10386_Cheesy_Chicken_Alfredo_Pasta_Bake_Recipe_Photo_2.jpg?output-quality=60&resize=600:*"
pasta3 = Recipe.new(name: 'Cheesy Chicken Alfredo Pasta Bake', category:, 'Pasta', description: 'A consistent pasta dish baked in a mixture of cheeses and bacon. A solid win for Winter days!', cooking_time: 35)
pasta3.remote_photo_url = url
pasta3.save!

url = "https://img.buzzfeed.com/thumbnailer-prod-us-east-1/video-api/assets/128650.jpg?output-quality=60&resize=600:*"
pasta4 = Recipe.new(name: '', category:, 'Pasta', description: '', cooking_time: )
pasta4.remote_photo_url = url
pasta4.save!

puts "Creating Ingredients database..."

tofu = Ingredient.create(name: 'Tofu', price_100gr: 3.80, kcal_100gr: 146, type: 'Dairy')
lemon = Ingredient.create(name: 'Lemon', price_100gr: 1.40, kcal_100gr: 17, type: 'Citrus Fruits')
yogurt = Ingredient.create(name: 'Yogurt', price_100gr: 1, kcal_100gr: 91, type: 'Dairy')
garlic = Ingredient.create(name: 'Garlic', price_100gr: 0.5, kcal_100gr: 149, type: 'Lilium')
ginger = Ingredient.create(name: 'Ginger', price_100gr: 0.7, kcal_100gr: 80, type: 'Lilium')
salt = Ingredient.create(name: 'Salt', price_100gr: 4, kcal_100gr: 0, type: 'Mineral')
ground_pepper = Ingredient.create(name: 'Ground Pepper', price_100gr: 1.40, kcal_100gr: 251, type: 'Spice')
cumin = Ingredient.create(name: 'Cumin', price_100gr: 13, kcal_100gr: 375, type: 'Spice')
garam_masala = Ingredient.create(name: 'Garam Masala', price_100gr: 5.95, kcal_100gr: 300, type: 'Spice')
paprika = Ingredient.create(name: 'Paprika', price_100gr: 1.35, kcal_100gr: 282, type: 'Spice')
oil = Ingredient.create(name: 'Oil', price_100gr: 0.7, kcal_100gr: 884, type: 'Oil')
onion = Ingredient.create(name: 'Onion', price_100gr: 0.3, kcal_100gr: 44, type: 'Vegetable')
tumeric = Ingredient.create(name: 'Tumeric', price_100gr: 4.75, kcal_100gr: 312, type: 'Spice')
coriander = Ingredient.create(name: 'Coriander', price_100gr: 4.70, kcal_100gr: 298, type: 'Spice')
chili_pwd = Ingredient.create(name: 'Chili Powder', price_100gr: 1.30, kcal_100gr: 282, type: 'Spice')
tomato_sauce = Ingredient.create(name: 'Tomato Sauce', price_100gr: 1.95, kcal_100gr: 47, type: 'Vegetable')
rice = Ingredient.create(name: 'Rice', price_100gr: 2.50, kcal_100gr: 351, type: 'Grain')
chicken_breast = Ingredient.create(name: 'Chicken Breast', price_100gr: 5.05, kcal_100gr: 220, type: 'Poultry')
lemon_juice = Ingredient.create(name: 'Lemon Juice', price_100gr: 1.10, kcal_100gr: 27, type: 'Citrus Fruits')
tikka_masala = Ingredient.create(name: 'Tikka Masala', price_100gr: 4.95, kcal_100gr: 81, type: 'Spice')
peppercorn = Ingredient.create(name: 'Peppercorn', price_100gr: 14.14, kcal_100gr: 251, type: 'Spice')
tomatoes = Ingredient.create(name: 'Tomatoes', price_100gr: 3.32, kcal_100gr: 47, type: 'Vegetable')
rice_basmati = Ingredient.create(name: 'Basmati Rice', price_100gr: 0.50, kcal_100gr: 342, type: 'Grain')
pork_chops = Ingredient.create(name: 'Pork Chops', price_100gr: 6.70, kcal_100gr: 209, type: 'Pork')
cheese_mozzarela = Ingredient.create(name: 'Mozzarela Cheese', price_100gr: 1.40, kcal_100gr: 244, type: 'Dairy')
egg = Ingredient.create(name: 'Egg', price_100gr: 0.80, kcal_100gr: 143, type: 'Egg')
breadcrumbs = Ingredient.create(name: 'Breadcrumbs', price_100gr: 0.41, kcal_100gr: 364, type: 'Bread')
potatoe = Ingredient.create(name: 'Potatoe', price_100gr: 1.98, kcal_100gr: 93, type: 'Vegetable')
carrot = Ingredient.create(name: 'Carrot', price_100gr: 0.46, kcal_100gr: 35, type: 'Vegetable')
curry_pwd = Ingredient.create(name: 'Curry Powder', price_100gr: 2.36, kcal_100gr: 104, type: '')
coconut_milk = Ingredient.create(name: 'Coconut Milk', price_100gr: 0.78, kcal_100gr: 42, type: 'Dairy')
butter = Ingredient.create(name: 'Butter', price_100gr: 2.05, kcal_100gr: 742, type: 'Dairy')
linguini = Ingredient.create(name: 'Linguini', price_100gr: 0.54, kcal_100gr: 359, type: 'Pasta')
shrimp = Ingredient.create(name: 'Shrimp', price_100gr: 3.20, kcal_100gr: 119, type: 'Fish')
oregano = Ingredient.create(name: 'Dried Oregano', price_100gr: 5.13, kcal_100gr: 265, type: 'Spice')
spinach = Ingredient.create(name: 'Spinach', price_100gr: 2.63, kcal_100gr: 11, type: 'Vegetable')
cheese_parmesan = Ingredient.create(name: 'Parmesan Cheese', price_100gr: 3.06, kcal_100gr: 383, type: 'Vegetable')
parsley = Ingredient.create(name: 'Parsley', price_100gr: 5, kcal_100gr: 0, type: 'Vegetable')
flour = Ingredient.create(name: 'Flour', price_100gr: 0.49, kcal_100gr: 346, type: 'Bread')
cheese_ricotta = Ingredient.create(name: 'Ricotta Cheese', price_100gr: 2,80, kcal_100gr: 169, type: 'Dairy')
lasagna_noodles = Ingredient.create(name: 'Lasagna Noodles', price_100gr: 0.74, kcal_100gr: 359, type: 'Pasta')
basil = Ingredient.create(name: 'Fresh Basil', price_100gr: 10, kcal_100gr: 0, type: 'Vegetable')
penne = Ingredient.create(name: 'Penne Pasta', price_100gr: 0.54, kcal_100gr: 354, type: 'Pasta')
whole_cream = Ingredient.create(name: 'Whole Pasteurized Cream', price_100gr: 1.15, kcal_100gr: 334, type: 'Dairy')
chicken_stock = Ingredient.create(name: 'Chicken Stock', price_100gr: 2.83, kcal_100gr: 282, type: 'Stock')
bell_pepper_red = Ingredient.create(name: 'Red Bell Pepper', price_100gr: 0.68, kcal_100gr: 30, type: 'Vegetable')
bell_pepper_green = Ingredient.create(name: 'Green Bell Pepper', price_100gr: 0.68, kcal_100gr: 30, type: 'Vegetable')
bell_pepper_yellow = Ingredient.create(name: 'Yellow Bell Pepper', price_100gr: 0.68, kcal_100gr: 30, type: 'Vegetable')
cumin = Ingredient.create(name: 'Cumin', price_100gr: 15.31, kcal_100gr: 10, type: 'Spice')
whole_milk = Ingredient.create(name: 'Whole Milk', price_100gr: 0.2, kcal_100gr: 51, type: 'Dairy')
cheese_pepper = Ingredient.create(name: 'Pepper Cheese', price_100gr: 2.60, kcal_100gr: 342, type: 'Dairy')

puts "49 Ingredients database created!"


puts "Creating Composants for recipes..."

comp_001 = Composant.new(quantity: 200)
comp_001.recipe = curry1
comp_001.ingredient = tomato_sauce
comp_001.save!

comp_002 = Composant.new(quantity: 75)
comp_002.recipe = curry1
comp_002.ingredient = rice
comp_002.save!

comp_003 = Composant.new(quantity: 98.75)
comp_003.recipe = curry1
comp_003.ingredient = tofu
comp_003.save!

comp_004 = Composant.new(quantity: 12.5)
comp_004.recipe = curry1
comp_004.ingredient = lemon
comp_004.save!

comp_005 = Composant.new(quantity: 25)
comp_005.recipe = curry1
comp_005.ingredient = yogurt
comp_005.save!

comp_006 = Composant.new(quantity: 8)
comp_006.recipe = curry1
comp_006.ingredient = garlic
comp_006.save!

comp_007 = Composant.new(quantity: 4.5)
comp_007.recipe = curry1
comp_007.ingredient = ginger
comp_007.save!

comp_008 = Composant.new(quantity: 1.25)
comp_008.recipe = curry1
comp_008.ingredient = salt
comp_008.save!

comp_009 = Composant.new(quantity: 1)
comp_009.recipe = curry1
comp_009.ingredient = cumin
comp_009.save!

comp_010 = Composant.new(quantity: 2)
comp_010.recipe = curry1
comp_010.ingredient = garam_masala
comp_010.save!

comp_011 = Composant.new(quantity: 2)
comp_011.recipe = curry1
comp_011.ingredient = paprika
comp_011.save!

comp_012 = Composant.new(quantity: 3.5)
comp_012.recipe = curry1
comp_012.ingredient = oil
comp_012.save!

comp_013 = Composant.new(quantity: 37.5)
comp_013.recipe = curry1
comp_013.ingredient = onion
comp_013.save!

comp_014 = Composant.new(quantity: 1)
comp_014.recipe = curry1
comp_014.ingredient = tumeric
comp_014.save!

comp_015 = Composant.new(quantity: 1)
comp_015.recipe = curry1
comp_015.ingredient = coriander
comp_015.save!

comp_016 = Composant.new(quantity: 1)
comp_016.recipe = curry1
comp_016.ingredient = chili_pwd
comp_016.save!

comp_017 = Composant.new(quantity: 100)
comp_017.recipe = curry2
comp_017.ingredient = chicken_breast
comp_017.save!

comp_018 = Composant.new(quantity: 70)
comp_018.recipe = curry2
comp_018.ingredient = yogurt
comp_018.save!

comp_019 = Composant.new(quantity: 2)
comp_019.recipe = curry2
comp_019.ingredient = lemon_juice
comp_019.save!

comp_020 = Composant.new(quantity: 4)
comp_020.recipe = curry2
comp_020.ingredient = ginger
comp_020.save!

comp_021 = Composant.new(quantity: 4)
comp_021.recipe = curry2
comp_021.ingredient = garlic
comp_021.save!

comp_022 = Composant.new(quantity: 7)
comp_022.recipe = curry2
comp_022.ingredient = tikka_masala
comp_022.save!

comp_023 = Composant.new(quantity: 3.5)
comp_023.recipe = curry2
comp_023.ingredient = chili_pwd
comp_023.save!

comp_024 = Composant.new(quantity: 1)
comp_024.recipe = curry2
comp_024.ingredient =  tumeric
comp_024.save!

comp_025 = Composant.new(quantity: 3.5)
comp_025.recipe = curry2
comp_025.ingredient = oil
comp_025.save!

comp_026 = Composant.new(quantity: 37.5)
comp_026.recipe = curry2
comp_026.ingredient = onion
comp_026.save!

comp_027 = Composant.new(quantity: 1.5)
comp_027.recipe = curry2
comp_027.ingredient = cumin
comp_027.save!

comp_028 = Composant.new(quantity: 1.25)
comp_028.recipe = curry2
comp_028.ingredient = salt
comp_028.save!

comp_029 = Composant.new(quantity: 1)
comp_029.recipe = curry2
comp_029.ingredient = coriander
comp_029.save!

comp_030 = Composant.new(quantity: 0.5)
comp_030.recipe = curry2
comp_030.ingredient = peppercorn
comp_030.save!

comp_031 = Composant.new(quantity: 2)
comp_031.recipe = curry2
comp_031.ingredient = garam_masala
comp_031.save!

comp_032 = Composant.new(quantity: 60)
comp_032.recipe = curry2
comp_032.ingredient = tomatoe
comp_032.save!

comp_033 = Composant.new(quantity: 25)
comp_033.recipe = curry2
comp_033.ingredient = yogurt
comp_033.save!

comp_034 = Composant.new(quantity: 75)
comp_034.recipe = curry2
comp_034.ingredient = rice_basmati
comp_034.save!

comp_035 = Composant.new(quantity: 230)
comp_035.recipe = curry3
comp_035.ingredient = rice
comp_035.save!

comp_036 = Composant.new(quantity: 209)
comp_036.recipe = curry3
comp_036.ingredient = pork_chops
comp_036.save!

comp_037 = Composant.new(quantity: 1.25)
comp_037.recipe = curry3
comp_037.ingredient = ground_pepper
comp_037.save!

comp_038 = Composant.new(quantity: 60)
comp_038.recipe = curry3
comp_038.ingredient = cheese_mozzarela
comp_038.save!

comp_039 = Composant.new(quantity: 25)
comp_039.recipe = curry3
comp_039.ingredient = egg
comp_039.save!

comp_040 = Composant.new(quantity: 37.5)
comp_040.recipe = curry3
comp_040.ingredient = breadcrumbs
comp_040.save!

comp_041 = Composant.new(quantity: 3.5)
comp_041.recipe = curry3
comp_041.ingredient = oil
comp_041.save!

comp_042 = Composant.new(quantity: 150)
comp_042.recipe = curry3
comp_042.ingredient = potatoe
comp_042.save!

comp_043 = Composant.new(quantity: 50)
comp_043.recipe = curry3
comp_043.ingredient = carrot
comp_043.save!

comp_044 = Composant.new(quantity: 100)
comp_044.recipe = curry4
comp_044.ingredient = chicken_breast
comp_044.save!

comp_045 = Composant.new(quantity: 1.25)
comp_045.recipe = curry4
comp_045.ingredient = salt
comp_045.save!

comp_046 = Composant.new(quantity: 1.25)
comp_046.recipe = curry4
comp_046.ingredient = ground_pepper
comp_046.save!

comp_047 = Composant.new(quantity: 2.5)
comp_047.recipe = curry4
comp_047.ingredient = curry_pwd
comp_047.save!

comp_048 = Composant.new(quantity: 2.5)
comp_048.recipe = curry4
comp_048.ingredient = garam_masala
comp_048.save!

comp_049 = Composant.new(quantity: 2.5)
comp_049.recipe = curry4
comp_049.ingredient = chili_pwd
comp_049.save!

comp_050 = Composant.new(quantity: 37.5)
comp_050.recipe = curry4
comp_050.ingredient = onion
comp_050.save!

comp_051 = Composant.new(quantity: 4)
comp_051.recipe = curry4
comp_051.ingredient = garlic
comp_051.save!

comp_052 = Composant.new(quantity: 50)
comp_052.recipe = curry4
comp_052.ingredient = tomato_sauce
comp_052.save!

comp_053 = Composant.new(quantity: 50)
comp_053.recipe = curry4
comp_053.ingredient = yogurt
comp_053.save!

comp_054 = Composant.new(quantity: 25)
comp_054.recipe = curry4
comp_054.ingredient = coconut_milk
comp_054.save!

comp_055 = Composant.new(quantity: 25)
comp_055.recipe = curry4
comp_055.ingredient = butter
comp_055.save!

comp_056 = Composant.new(quantity: 75)
comp_056.recipe = curry4
comp_056.ingredient = rice
comp_056.save!

comp_057 = Composant.new(quantity: 1)
comp_057.recipe = curry4
comp_057.ingredient = coriander
comp_057.save!

comp_058 = Composant.new(quantity: 56.25)
comp_058.recipe = pasta1
comp_058.ingredient = linguini
comp_058.save!

comp_059 = Composant.new(quantity: 3.5)
comp_059.recipe = pasta1
comp_059.ingredient = oil
comp_059.save!

comp_060 = Composant.new(quantity: 28)
comp_060.recipe = pasta1
comp_060.ingredient = butter
comp_060.save!

comp_061 = Composant.new(quantity: 1.25)
comp_061.recipe = pasta1
comp_061.ingredient = ground_pepper
comp_061.save!

comp_062 = Composant.new(quantity: 4)
comp_062.recipe = pasta1
comp_062.ingredient = garlic
comp_062.save!

comp_063 = Composant.new(quantity: 142)
comp_063.recipe = pasta1
comp_063.ingredient = shrimp
comp_063.save!

comp_064 = Composant.new(quantity: 1.25)
comp_064.recipe = pasta1
comp_064.ingredient = salt
comp_064.save!

comp_065 = Composant.new(quantity: 1.25)
comp_065.recipe = pasta1
comp_065.ingredient = oregano
comp_065.save!

comp_066 = Composant.new(quantity: 40)
comp_066.recipe = pasta1
comp_066.ingredient = spinach
comp_066.save!

comp_067 = Composant.new(quantity: 10)
comp_067.recipe = pasta1
comp_067.ingredient = cheese_parmesan
comp_067.save!

comp_068 = Composant.new(quantity: 4)
comp_068.recipe = pasta1
comp_068.ingredient = parsley
comp_068.save!

comp_069 = Composant.new(quantity: 2)
comp_069.recipe = pasta1
comp_069.ingredient = lemon_juice
comp_069.save!

comp_070 = Composant.new(quantity: 50)
comp_070.recipe = pasta2
comp_070.ingredient = chicken_breast
comp_070.save!

comp_071 = Composant.new(quantity: 1.25)
comp_071.recipe = pasta2
comp_071.ingredient = salt
comp_071.save!

comp_072 = Composant.new(quantity: 1.25)
comp_072.recipe = pasta2
comp_072.ingredient = ground_pepper
comp_072.save!

comp_073 = Composant.new(quantity: 25)
comp_073.recipe = pasta2
comp_073.ingredient = egg
comp_073.save!

comp_074 = Composant.new(quantity: 23)
comp_074.recipe = pasta2
comp_074.ingredient = breadcrumbs
comp_074.save!

comp_075 = Composant.new(quantity: 3.5)
comp_075.recipe = pasta2
comp_075.ingredient = oil
comp_075.save!

comp_076 = Composant.new(quantity: 60)
comp_076.recipe = pasta2
comp_076.ingredient = cheese_ricotta
comp_076.save!

comp_077 = Composant.new(quantity: 50)
comp_077.recipe = pasta2
comp_077.ingredient = lasagna_noodles
comp_077.save!

comp_078 = Composant.new(quantity: 60)
comp_078.recipe = pasta2
comp_078.ingredient = cheese_mozzarela
comp_078.save!

comp_079 = Composant.new(quantity: 30)
comp_079.recipe = pasta2
comp_079.ingredient = cheese_parmesan
comp_079.save!

comp_080 = Composant.new(quantity: 5)
comp_080.recipe = pasta2
comp_080.ingredient = basil
comp_080.save!

comp_081 = Composant.new(quantity: 3.5)
comp_081.recipe = pasta3
comp_081.ingredient = oil
comp_081.save!

comp_082 = Composant.new(quantity: 100)
comp_082.recipe = pasta3
comp_082.ingredient = chicken_breast
comp_082.save!

comp_083 = Composant.new(quantity: 1.25)
comp_083.recipe = pasta3
comp_083.ingredient = salt
comp_083.save!

comp_084 = Composant.new(quantity: 1.25)
comp_084.recipe = pasta3
comp_084.ingredient = ground_pepper
comp_084.save!

comp_085 = Composant.new(quantity: 4)
comp_085.recipe = pasta3
comp_085.ingredient = garlic
comp_085.save!

comp_086 = Composant.new(quantity: 4)
comp_086.recipe = pasta3
comp_086.ingredient = chicken_stock
comp_086.save!

comp_087 = Composant.new(quantity: 80)
comp_087.recipe = pasta3
comp_087.ingredient = penne
comp_087.save!

comp_088 = Composant.new(quantity: 100)
comp_088.recipe = pasta3
comp_088.ingredient = whole_cream
comp_088.save!

comp_089 = Composant.new(quantity: 40)
comp_089.recipe = pasta3
comp_089.ingredient = cheese_parmesan
comp_089.save!

comp_090 = Composant.new(quantity: 40)
comp_090.recipe = pasta3
comp_090.ingredient = cheese_mozzarela
comp_090.save!

comp_091 = Composant.new(quantity: 4)
comp_091.recipe = pasta3
comp_091.ingredient = parsley
comp_091.save!

comp_092 = Composant.new(quantity: 21)
comp_092.recipe = pasta4
comp_092.ingredient = oil
comp_092.save!

comp_093 = Composant.new(quantity: 200)
comp_093.recipe = pasta4
comp_093.ingredient = chicken_breast
comp_093.save!

comp_094 = Composant.new(quantity: 70)
comp_094.recipe = pasta4
comp_094.ingredient = bell_pepper_red
comp_094.save!

comp_095 = Composant.new(quantity: 70)
comp_095.recipe = pasta4
comp_095.ingredient = bell_pepper_green
comp_095.save!

comp_096 = Composant.new(quantity: 70)
comp_096.recipe = pasta4
comp_096.ingredient = bell_pepper_yellow
comp_096.save!

comp_097 = Composant.new(quantity: 37.5)
comp_097.recipe = pasta4
comp_097.ingredient = onion
comp_097.save!

comp_098 = Composant.new(quantity: 1.25)
comp_098.recipe = pasta4
comp_098.ingredient = salt
comp_098.save!

comp_099 = Composant.new(quantity: 1.25)
comp_099.recipe = pasta4
comp_099.ingredient = ground_pepper
comp_099.save!

comp_100 = Composant.new(quantity: 1)
comp_100.recipe = pasta4
comp_100.ingredient = chili_pwd
comp_100.save!

comp_101 = Composant.new(quantity: 1.5)
comp_101.recipe = pasta4
comp_101.ingredient = cumin
comp_101.save!

comp_102 = Composant.new(quantity: 4)
comp_102.recipe = pasta4
comp_102.ingredient = garlic
comp_102.save!

comp_103 = Composant.new(quantity: 400)
comp_103.recipe = pasta4
comp_103.ingredient = whole_milk
comp_103.save!

comp_104 = Composant.new(quantity: 200)
comp_104.recipe = pasta4
comp_104.ingredient = penne
comp_104.save!

comp_105 = Composant.new(quantity: 50)
comp_105.recipe = pasta4
comp_105.ingredient = cheese_pepper
comp_105.save!

# comp_106 = Composant.new(quantity: )
# comp_106.recipe =
# comp_106.ingredient =
# comp_106.save!

# comp_107 = Composant.new(quantity: )
# comp_107.recipe =
# comp_107.ingredient =
# comp_107.save!

# comp_108 = Composant.new(quantity: )
# comp_108.recipe =
# comp_108.ingredient =
# comp_108.save!

# comp_109 = Composant.new(quantity: )
# comp_109.recipe =
# comp_109.ingredient =
# comp_109.save!

# comp_110 = Composant.new(quantity: )
# comp_110.recipe =
# comp_110.ingredient =
# comp_110.save!

# comp_111 = Composant.new(quantity: )
# comp_111.recipe =
# comp_111.ingredient =
# comp_111.save!

# comp_112 = Composant.new(quantity: )
# comp_112.recipe =
# comp_112.ingredient =
# comp_112.save!

# comp_113 = Composant.new(quantity: )
# comp_113.recipe =
# comp_113.ingredient =
# comp_113.save!

# comp_114 = Composant.new(quantity: )
# comp_114.recipe =
# comp_114.ingredient =
# comp_114.save!

# comp_115 = Composant.new(quantity: )
# comp_115.recipe =
# comp_115.ingredient =
# comp_115.save!

# comp_116 = Composant.new(quantity: )
# comp_116.recipe =
# comp_116.ingredient =
# comp_116.save!

# comp_117 = Composant.new(quantity: )
# comp_117.recipe =
# comp_117.ingredient =
# comp_117.save!

# comp_118 = Composant.new(quantity: )
# comp_118.recipe =
# comp_118.ingredient =
# comp_118.save!

# comp_119 = Composant.new(quantity: )
# comp_119.recipe =
# comp_119.ingredient =
# comp_119.save!

# comp_120 = Composant.new(quantity: )
# comp_120.recipe =
# comp_120.ingredient =
# comp_120.save!

# comp_121 = Composant.new(quantity: )
# comp_121.recipe =
# comp_121.ingredient =
# comp_121.save!

# comp_122 = Composant.new(quantity: )
# comp_122.recipe =
# comp_122.ingredient =
# comp_122.save!

# comp_123 = Composant.new(quantity: )
# comp_123.recipe =
# comp_123.ingredient =
# comp_123.save!

# comp_124 = Composant.new(quantity: )
# comp_124.recipe =
# comp_124.ingredient =
# comp_124.save!

# comp_125 = Composant.new(quantity: )
# comp_125.recipe =
# comp_125.ingredient =
# comp_125.save!

# comp_126 = Composant.new(quantity: )
# comp_126.recipe =
# comp_126.ingredient =
# comp_126.save!

# comp_127 = Composant.new(quantity: )
# comp_127.recipe =
# comp_127.ingredient =
# comp_127.save!

# comp_128 = Composant.new(quantity: )
# comp_128.recipe =
# comp_128.ingredient =
# comp_128.save!

# comp_129 = Composant.new(quantity: )
# comp_129.recipe =
# comp_129.ingredient =
# comp_129.save!

# comp_130 = Composant.new(quantity: )
# comp_130.recipe =
# comp_130.ingredient =
# comp_130.save!

# comp_131 = Composant.new(quantity: )
# comp_131.recipe =
# comp_131.ingredient =
# comp_131.save!

# comp_132 = Composant.new(quantity: )
# comp_132.recipe =
# comp_132.ingredient =
# comp_132.save!

# comp_133 = Composant.new(quantity: )
# comp_133.recipe =
# comp_133.ingredient =
# comp_133.save!

# comp_134 = Composant.new(quantity: )
# comp_134.recipe =
# comp_134.ingredient =
# comp_134.save!

# comp_135 = Composant.new(quantity: )
# comp_135.recipe =
# comp_135.ingredient =
# comp_135.save!

# comp_136 = Composant.new(quantity: )
# comp_136.recipe =
# comp_136.ingredient =
# comp_136.save!

# comp_137 = Composant.new(quantity: )
# comp_137.recipe =
# comp_137.ingredient =
# comp_137.save!

# comp_138 = Composant.new(quantity: )
# comp_138.recipe =
# comp_138.ingredient =
# comp_138.save!

# comp_139 = Composant.new(quantity: )
# comp_139.recipe =
# comp_139.ingredient =
# comp_139.save!

# comp_140 = Composant.new(quantity: )
# comp_140.recipe =
# comp_140.ingredient =
# comp_140.save!

# comp_141 = Composant.new(quantity: )
# comp_141.recipe =
# comp_141.ingredient =
# comp_141.save!

# comp_142 = Composant.new(quantity: )
# comp_142.recipe =
# comp_142.ingredient =
# comp_142.save!

# comp_143 = Composant.new(quantity: )
# comp_143.recipe =
# comp_143.ingredient =
# comp_143.save!

# comp_144 = Composant.new(quantity: )
# comp_144.recipe =
# comp_144.ingredient =
# comp_144.save!

# comp_145 = Composant.new(quantity: )
# comp_145.recipe =
# comp_145.ingredient =
# comp_145.save!

# comp_146 = Composant.new(quantity: )
# comp_146.recipe =
# comp_146.ingredient =
# comp_146.save!

# comp_147 = Composant.new(quantity: )
# comp_147.recipe =
# comp_147.ingredient =
# comp_147.save!

# comp_148 = Composant.new(quantity: )
# comp_148.recipe =
# comp_148.ingredient =
# comp_148.save!

# comp_149 = Composant.new(quantity: )
# comp_149.recipe =
# comp_149.ingredient =
# comp_149.save!

# comp_150 = Composant.new(quantity: )
# comp_150.recipe =
# comp_150.ingredient =
# comp_150.save!

# comp_151 = Composant.new(quantity: )
# comp_151.recipe =
# comp_151.ingredient =
# comp_151.save!

# comp_152 = Composant.new(quantity: )
# comp_152.recipe =
# comp_152.ingredient =
# comp_152.save!

# comp_153 = Composant.new(quantity: )
# comp_153.recipe =
# comp_153.ingredient =
# comp_153.save!

# comp_154 = Composant.new(quantity: )
# comp_154.recipe =
# comp_154.ingredient =
# comp_154.save!

# comp_155 = Composant.new(quantity: )
# comp_155.recipe =
# comp_155.ingredient =
# comp_155.save!

# comp_156 = Composant.new(quantity: )
# comp_156.recipe =
# comp_156.ingredient =
# comp_156.save!

# comp_157 = Composant.new(quantity: )
# comp_157.recipe =
# comp_157.ingredient =
# comp_157.save!

# comp_158 = Composant.new(quantity: )
# comp_158.recipe =
# comp_158.ingredient =
# comp_158.save!

# comp_159 = Composant.new(quantity: )
# comp_159.recipe =
# comp_159.ingredient =
# comp_159.save!

# comp_160 = Composant.new(quantity: )
# comp_160.recipe =
# comp_160.ingredient =
# comp_160.save!

# comp_161 = Composant.new(quantity: )
# comp_161.recipe =
# comp_161.ingredient =
# comp_161.save!

# comp_162 = Composant.new(quantity: )
# comp_162.recipe =
# comp_162.ingredient =
# comp_162.save!

# comp_163 = Composant.new(quantity: )
# comp_163.recipe =
# comp_163.ingredient =
# comp_163.save!

# comp_164 = Composant.new(quantity: )
# comp_164.recipe =
# comp_164.ingredient =
# comp_164.save!

# comp_165 = Composant.new(quantity: )
# comp_165.recipe =
# comp_165.ingredient =
# comp_165.save!

# comp_166 = Composant.new(quantity: )
# comp_166.recipe =
# comp_166.ingredient =
# comp_166.save!

# comp_167 = Composant.new(quantity: )
# comp_167.recipe =
# comp_167.ingredient =
# comp_167.save!

# comp_168 = Composant.new(quantity: )
# comp_168.recipe =
# comp_168.ingredient =
# comp_168.save!

# comp_169 = Composant.new(quantity: )
# comp_169.recipe =
# comp_169.ingredient =
# comp_169.save!

# comp_170 = Composant.new(quantity: )
# comp_170.recipe =
# comp_170.ingredient =
# comp_170.save!

# comp_171 = Composant.new(quantity: )
# comp_171.recipe =
# comp_171.ingredient =
# comp_171.save!

# comp_172 = Composant.new(quantity: )
# comp_172.recipe =
# comp_172.ingredient =
# comp_172.save!

# comp_173 = Composant.new(quantity: )
# comp_173.recipe =
# comp_173.ingredient =
# comp_173.save!

# comp_174 = Composant.new(quantity: )
# comp_174.recipe =
# comp_174.ingredient =
# comp_174.save!

# comp_175 = Composant.new(quantity: )
# comp_175.recipe =
# comp_175.ingredient =
# comp_175.save!

# comp_176 = Composant.new(quantity: )
# comp_176.recipe =
# comp_176.ingredient =
# comp_176.save!

# comp_177 = Composant.new(quantity: )
# comp_177.recipe =
# comp_177.ingredient =
# comp_177.save!

# comp_178 = Composant.new(quantity: )
# comp_178.recipe =
# comp_178.ingredient =
# comp_178.save!

# comp_179 = Composant.new(quantity: )
# comp_179.recipe =
# comp_179.ingredient =
# comp_179.save!

# comp_180 = Composant.new(quantity: )
# comp_180.recipe =
# comp_180.ingredient =
# comp_180.save!

# comp_181 = Composant.new(quantity: )
# comp_181.recipe =
# comp_181.ingredient =
# comp_181.save!

# comp_182 = Composant.new(quantity: )
# comp_182.recipe =
# comp_182.ingredient =
# comp_182.save!

# comp_183 = Composant.new(quantity: )
# comp_183.recipe =
# comp_183.ingredient =
# comp_183.save!

# comp_184 = Composant.new(quantity: )
# comp_184.recipe =
# comp_184.ingredient =
# comp_184.save!

# comp_185 = Composant.new(quantity: )
# comp_185.recipe =
# comp_185.ingredient =
# comp_185.save!

# comp_186 = Composant.new(quantity: )
# comp_186.recipe =
# comp_186.ingredient =
# comp_186.save!

# comp_187 = Composant.new(quantity: )
# comp_187.recipe =
# comp_187.ingredient =
# comp_187.save!

# comp_188 = Composant.new(quantity: )
# comp_188.recipe =
# comp_188.ingredient =
# comp_188.save!

# comp_189 = Composant.new(quantity: )
# comp_189.recipe =
# comp_189.ingredient =
# comp_189.save!

# comp_190 = Composant.new(quantity: )
# comp_190.recipe =
# comp_190.ingredient =
# comp_190.save!

# comp_191 = Composant.new(quantity: )
# comp_191.recipe =
# comp_191.ingredient =
# comp_191.save!

# comp_192 = Composant.new(quantity: )
# comp_192.recipe =
# comp_192.ingredient =
# comp_192.save!

# comp_193 = Composant.new(quantity: )
# comp_193.recipe =
# comp_193.ingredient =
# comp_193.save!

# comp_194 = Composant.new(quantity: )
# comp_194.recipe =
# comp_194.ingredient =
# comp_194.save!

# comp_195 = Composant.new(quantity: )
# comp_195.recipe =
# comp_195.ingredient =
# comp_195.save!

# comp_196 = Composant.new(quantity: )
# comp_196.recipe =
# comp_196.ingredient =
# comp_196.save!

# comp_197 = Composant.new(quantity: )
# comp_197.recipe =
# comp_197.ingredient =
# comp_197.save!

# comp_198 = Composant.new(quantity: )
# comp_198.recipe =
# comp_198.ingredient =
# comp_198.save!

# comp_199 = Composant.new(quantity: )
# comp_199.recipe =
# comp_199.ingredient =
# comp_199.save!

# comp_200 = Composant.new(quantity: )
# comp_200.recipe =
# comp_200.ingredient =
# comp_200.save!

# comp_201 = Composant.new(quantity: )
# comp_201.recipe =
# comp_201.ingredient =
# comp_201.save!

# comp_202 = Composant.new(quantity: )
# comp_202.recipe =
# comp_202.ingredient =
# comp_202.save!

# comp_203 = Composant.new(quantity: )
# comp_203.recipe =
# comp_203.ingredient =
# comp_203.save!

# comp_204 = Composant.new(quantity: )
# comp_204.recipe =
# comp_204.ingredient =
# comp_204.save!

# comp_205 = Composant.new(quantity: )
# comp_205.recipe =
# comp_205.ingredient =
# comp_205.save!

# comp_206 = Composant.new(quantity: )
# comp_206.recipe =
# comp_206.ingredient =
# comp_206.save!

# comp_207 = Composant.new(quantity: )
# comp_207.recipe =
# comp_207.ingredient =
# comp_207.save!

# comp_208 = Composant.new(quantity: )
# comp_208.recipe =
# comp_208.ingredient =
# comp_208.save!

# comp_209 = Composant.new(quantity: )
# comp_209.recipe =
# comp_209.ingredient =
# comp_209.save!

# comp_210 = Composant.new(quantity: )
# comp_210.recipe =
# comp_210.ingredient =
# comp_210.save!

# comp_211 = Composant.new(quantity: )
# comp_211.recipe =
# comp_211.ingredient =
# comp_211.save!

# comp_212 = Composant.new(quantity: )
# comp_212.recipe =
# comp_212.ingredient =
# comp_212.save!

# comp_213 = Composant.new(quantity: )
# comp_213.recipe =
# comp_213.ingredient =
# comp_213.save!

# comp_214 = Composant.new(quantity: )
# comp_214.recipe =
# comp_214.ingredient =
# comp_214.save!

# comp_215 = Composant.new(quantity: )
# comp_215.recipe =
# comp_215.ingredient =
# comp_215.save!

# comp_216 = Composant.new(quantity: )
# comp_216.recipe =
# comp_216.ingredient =
# comp_216.save!

# comp_217 = Composant.new(quantity: )
# comp_217.recipe =
# comp_217.ingredient =
# comp_217.save!

# comp_218 = Composant.new(quantity: )
# comp_218.recipe =
# comp_218.ingredient =
# comp_218.save!

# comp_219 = Composant.new(quantity: )
# comp_219.recipe =
# comp_219.ingredient =
# comp_219.save!

# comp_220 = Composant.new(quantity: )
# comp_220.recipe =
# comp_220.ingredient =
# comp_220.save!

# comp_221 = Composant.new(quantity: )
# comp_221.recipe =
# comp_221.ingredient =
# comp_221.save!

# comp_222 = Composant.new(quantity: )
# comp_222.recipe =
# comp_222.ingredient =
# comp_222.save!



# puts "Creating 4 ingredients"
# farine = Ingredient.create(name: 'farine')
# tomate = Ingredient.create(name: 'tomate')
# poulet_ing = Ingredient.create(name: 'poulet')
# chocolat = Ingredient.create(name: 'chocolat')

# puts "Creating 2 Composants"
# compo1 = Composant.new
# compo1.recipe = fondant
# compo1.ingredient = chocolat
# compo1.save!

# compo2 = Composant.new
# compo2.recipe = poulet
# compo2.ingredient = poulet_ing
# compo2.save!

puts "105 Composants have been created!"
