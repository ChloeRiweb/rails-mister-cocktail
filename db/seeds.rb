des# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
# Ingredient.create(name: "strawberry")
# Ingredient.create(name: "gin")
# Ingredient.create(name: "Lemon vodka")
# Ingredient.create(name: "Dry Vermouth")
# Ingredient.create(name: "Blended whiskey")
# Ingredient.create(name: "tonic")
# Ingredient.create(name: "coca")
# Ingredient.create(name: "Strawberry schnapps")
# Ingredient.create(name: "Triple sec")
# Ingredient.create(name: "Orange bitters")
# Ingredient.create(name: "Bourbon")
# Ingredient.create(name: "Tequila")
# Ingredient.create(name: "Añejo rum")
# Ingredient.create(name: "Mango")

Ingredient.destroy_all

require 'json'
require 'open-uri'
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredient_serialized = open(url).read
ingredient = JSON.parse(ingredient_serialized)

ingredient['drinks'].each do |drink|
  Ingredient.create(name: drink['strIngredient1'])
end
