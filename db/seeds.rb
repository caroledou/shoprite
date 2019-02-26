# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating 4 recipes"

lasagne = Recipe.new(name: 'Lasagnes traditionnelles italiennes', category: 'Lasagne', description: "Cette recette peut paraitre surprenante, mais d'après ma collègue (qui est italienne - pure souche!), il n'y a pas de sauce béchamel dans les VRAIES lasagnes... Concernant les plaques de lasagne, je conseille des plaques précuites. Sinon, cuire préalablement les plaques dans de l'eau bouillante et les étaler sur un torchon avant utilisation. [NDchef: attention à faire que les plaques de lasagne ne dépassent pas de la préparation (quitte à 'appuyer' un peu sur le desus), sinon cela donne des morceaux secs qui dépassent.]")
lasagne.save!

soupe = Recipe.new(name: 'Soupe de champignons', category: 'Soupe', description: 'Une bonne soupe automnale que vous pouvez accompagner de croûtons de pain grillé.')
soupe.save!

fondant = Recipe.new(name: 'The fondant au chocolat sucré-salé', category: "Dessert", description: "On peut en faire une version aux fruits, en enfonçant légèrement dans la pâte avant cuisson les fruits souhaités. On peut aussi sucrer le gâteau avec un pot de crème de marron, pour une saveur un peu différente. On peut également ajouter de la poudre d'amandes, de noisettes, noix de coco, caramel liquide ou du café en poudre pour varier.")
fondant.save!

poulet = Recipe.new(name: 'Ailerons de poulet confits au miel', category: "Plat", description: "Plat très facile et surtout très bon marché.")
poulet.save

puts "Done!"
