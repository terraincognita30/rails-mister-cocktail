# require 'open-uri'
# require 'JSON'

Cocktail.destroy_all
Ingredient.destroy_all
Review.destroy_all

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

wheresdoug = Cocktail.create(name: "Where's Doug")
Dose.create(cocktail: wheresdoug, ingredient: Ingredient.find_by(name: 'ginger beard'), description: '1 full')
Review.create(cocktail: wheresdoug, review_name: 'Kingsley', content: 'Unsettling')
Review.create(cocktail: wheresdoug, review_name: 'Doug', content: 'Refreshing')

thejordan = Cocktail.create(name: "The Jordan")
Dose.create(cocktail: thejordan, ingredient: Ingredient.find_by(name: 'curry'), description: '1')
Dose.create(cocktail: thejordan, ingredient: Ingredient.find_by(name: 'naan'), description: '1')
Review.create(cocktail: thejordan, review_name: 'Kingsley', content: 'This is not a cocktail')
Review.create(cocktail: thejordan, review_name: 'Anon 2', content: 'Not available on Fridays')
Review.create(cocktail: thejordan, review_name: 'Anon', content: 'Lakshmi is better')


therake = Cocktail.create(name: "The Rake")
Dose.create(cocktail: therake, ingredient: Ingredient.find_by(name: 'green'), description: '1 drop of')
Dose.create(cocktail: therake, ingredient: Ingredient.find_by(name: 'red'), description: '1 bucket of')
Review.create(cocktail: therake, review_name: 'Anon', content: 'Too much red, too little green')

yannbreak = Cocktail.create(name: "Yann Break")
Dose.create(cocktail: yannbreak, ingredient: Ingredient.find_by(name: 'water'), description: '1 drop of')

livecode = Cocktail.create(name: "Livecode")
Dose.create(cocktail: livecode, ingredient: Ingredient.find_by(name: 'Jägermeister'), description: '1')
Review.create(cocktail: livecode, review_name: 'Student 1', content: 'Lakshmi is better')
Review.create(cocktail: livecode, review_name: 'Student 2', content: 'Beer in fridge tastes better')
