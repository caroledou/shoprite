# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning DB"
Recipe.destroy_all

puts "Creating 4 recipes"

url = "https://assets.afcdn.com/recipe/20151023/223_w300h400c1cx1872cy2808.jpg"
lasagne = Recipe.new(name: 'Lasagnes traditionnelles italiennes', category: 'Lasagne', description: "Cette recette peut paraitre surprenante!", cooking_time: 60)
lasagne.remote_photo_url = url
lasagne.save!

url = "https://image.afcdn.com/recipe/20160404/36766_w420h344c1cx1500cy1288.jpg"
soupe = Recipe.new(name: 'Soupe de champignons', category: 'Soupe', description: 'Une bonne soupe automnale que vous pouvez accompagner de croûtons de pain grillé.', cooking_time: 40)
soupe.remote_photo_url = url
soupe.save!

url = "https://assets.afcdn.com/recipe/20160711/18915_w300h400c1cx2357cy2165.jpg"
fondant = Recipe.new(name: 'The fondant au chocolat sucré-salé', category: "Dessert", description: "On peut en faire une version aux fruits!", cooking_time: 35)
fondant.remote_photo_url = url
fondant.save!

url = "https://assets.afcdn.com/recipe/20160908/23686_w300h400c1.jpg"
poulet = Recipe.new(name: 'Ailerons de poulet confits au miel', category: "Plat", description: "Plat très facile et surtout très bon marché.", cooking_time: 65)
poulet.remote_photo_url = url
poulet.save!

puts "Done!"
