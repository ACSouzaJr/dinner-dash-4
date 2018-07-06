# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Meal.destroy_all
MealCategory.destroy_all


#users
User.create(name: "Admin", email: "email@email.com", password: "123456", admin: true)
User.create(name: "Joao", email: "asd@mail.com", password: "123456")
User.create(name: "rafael", email: "rafael@mail.com", password: "123456")
User.create(name: "leticia", email: "leticia@mail.com", password: "123456")
User.create(name: "flavio", email: "flavio@mail.com", password: "123456")
User.create(name: "henrique", email: "henrique@mail.com", password: "123456")
User.create(name: "amanda", email: "amanda@mail.com", password: "123456")
User.create(name: "barbara", email: "barbara@mail.com", password: "123456")
User.create(name: "joana", email: "joana@mail.com", password: "123456")
User.create(name: "gabriel1", email: "gabriel1@mail.com", password: "123456")
User.create(name: "gabriel2", email: "gabriel2@mail.com", password: "123456")
User.create(name: "gabriel3", email: "gabriel3@mail.com", password: "123456")

#categories
MealCategory.create! [{name: "Saladas"}, {name: "Molhos"}]

#Meals
Meal.create! [
  {name: "salada", meal_category_id: '1', description: 'possui macarrao, frango, milho, alcaparras e frutas.', price: '10,99', image: 'meals/macrão'},
  {name: "salada", meal_category_id: '1', description: 'possui macarrao, frango, milho, alcaparras e frutas.', price: '10,99', image: 'meals/macrão'},
  {name: "salada", meal_category_id: '1', description: 'possui macarrao, frango, milho, alcaparras e frutas.', price: '10,99', image: 'meals/macrão'},
  {name: "salada", meal_category_id: '1', description: 'possui macarrao, frango, milho, alcaparras e frutas.', price: '10,99', image: 'meals/macrão'},
  {name: "Molho iogurt", meal_category_id: '2', description: 'possui azeite, iorgute, alho, limão, hortelã e salsinha.', price: '5,00', image: 'meals/macrão'},
  {name: "Molho iogurt", meal_category_id: '2', description: 'possui azeite, iorgute, alho, limão, hortelã e salsinha.', price: '5,00', image: 'meals/macrão'},
  {name: "Molho iogurt", meal_category_id: '2', description: 'possui azeite, iorgute, alho, limão, hortelã e salsinha.', price: '5,00', image: 'meals/macrão'},
  {name: "Molho iogurt", meal_category_id: '2', description: 'possui azeite, iorgute, alho, limão, hortelã e salsinha.', price: '5,00', image: 'meals/macrão'}
  ]
