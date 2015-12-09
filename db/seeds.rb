# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Food.create(name: 'dunkin donut', calories: 180, carbs: 25, proteins: 3)
Food.create(name: 'ham and cheese sandwitch', calories: 175, carbs: 20, proteins: 17)
Food.create(name: 'orange juice', calories: 14, carbs: 3, proteins: 0)

c1 = Category.find_or_create_by(name: 'Sweets')
c1.foods.create(name: 'fat dunkin donut', calories: 180, carbs: 25, proteins: 3, fats:100)
c2= Category.find_or_create_by(name: 'Drinks')
c2.foods.create(name: 'apple juice', calories: 14, carbs: 3, proteins: 0, fats: 0)
c2.foods.create(name: 'water', calories: 0, carbs: 0, proteins: 0, fats: 0)
