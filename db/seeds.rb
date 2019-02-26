# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating 4 recipes"

lasagne = Recipe.new(name: 'Lasagnes traditionnelles italiennes', category: 'Lasagne', description: "Cette recette peut paraitre surprenante!", photo: cl_image_tag("dxjqm20a2u9fbuuoxhku", width: 400, height: 300, crop: :fill))
lasagne.save!

soupe = Recipe.new(name: 'Soupe de champignons', category: 'Soupe', description: 'Une bonne soupe automnale que vous pouvez accompagner de croûtons de pain grillé.', photo: cl_image_tag("t3yl030frjhkw0gnrgba", width: 400, height: 300, crop: :fill))
soupe.save!

fondant = Recipe.new(name: 'The fondant au chocolat sucré-salé', category: "Dessert", description: "On peut en faire une version aux fruits!", photo: cl_image_tag("nyd9lg74hyqct0t2b2ge", width: 400, height: 300, crop: :fill))
fondant.save!

poulet = Recipe.new(name: 'Ailerons de poulet confits au miel', category: "Plat", description: "Plat très facile et surtout très bon marché.", photo: cl_image_tag("gxfzjv2gpjufzzwo3ik4", width: 400, height: 300, crop: :fill))
poulet.save

puts "Done!"
