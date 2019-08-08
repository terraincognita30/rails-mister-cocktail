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
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

Cocktail.create([{name: "Mule"}])
Cocktail.create([{name: "Peach Bellini"}])
Cocktail.create([{name: "Some Cocktail"}])

ok = Cocktail.create(name: 'Bryenne')
Dose.create(cocktail: ok, ingredient: Ingredient.find_by(name: 'Creme de Cacao'), description: '1 shot')
Dose.create(cocktail: ok, ingredient: Ingredient.find_by(name: 'Port'), description: 'a splash')
