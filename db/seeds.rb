require 'open-uri'
require 'JSON'


url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
json = open(url).read
ingredients_stuff = JSON.parse(json)
ingredients_stuff['drinks'].each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.create(name: "ginger beard")
Ingredient.create(name: "ginger beer")
Ingredient.create(name: "curry")
Ingredient.create(name: "naan")
Ingredient.create(name: "red")
Ingredient.create(name: "green")
Ingredient.create(name: "Absolut Vodka")

# wheresdoug = Cocktail.create(name: "Where's Doug")
# Dose.create(cocktail: "Where's Doug", ingredient: Ingredient.find_by(name: 'ginger beard'), description: '1 full')
# Dose.create(cocktail: "Where's Doug", ingredient: Ingredient.find_by(name: 'ginger beer'), description: '1')

# thejordan = Cocktail.create(name: "The Jordan")
# Dose.create(cocktail: "The Jordan", ingredient: Ingredient.find_by(name: 'curry'), description: '1 glass of')
# Dose.create(cocktail: "The Jordan", ingredient: Ingredient.find_by(name: 'naan'), description: '1')

# therake = Cocktail.create(name: "The Rake")
# Dose.create(cocktail: "The Rake", ingredient: Ingredient.find_by(name: 'green'), description: '1 drop of')
# Dose.create(cocktail: "The Rake", ingredient: Ingredient.find_by(name: 'red'), description: '1 can of')
