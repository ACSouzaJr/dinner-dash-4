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
User.create! [
  {name: "Admin", email: "email@email.com", password: "123456", admin: true},
  {name: "Joao", email: "asd@mail.com", password: "123456"},
  {name: "rafael", email: "rafael@mail.com", password: "123456"},
  {name: "leticia", email: "leticia@mail.com", password: "123456"},
  {name: "flavio", email: "flavio@mail.com", password: "123456"},
  {name: "henrique", email: "henrique@mail.com", password: "123456"},
  {name: "amanda", email: "amanda@mail.com", password: "123456"},
  {name: "barbara", email: "barbara@mail.com", password: "123456"},
  {name: "joana", email: "joana@mail.com", password: "123456"},
  {name: "gabriel1", email: "gabriel1@mail.com", password: "123456"},
  {name: "gabriel2", email: "gabriel2@mail.com", password: "123456"},
  {name: "gabriel3", email: "gabriel3@mail.com", password: "123456"}
]

#categories
MealCategory.create! [
  {name: "Saladas"},
  {name: "Molhos"}
]

#Meals
Meal.create! [
  {name: "Salada", meal_category_id: '1', description: 'Possui macarrao, frango, milho, alcaparras e frutas.', price: '10,99', image: 'meals/macrão'},
  {name: "Salada", meal_category_id: '1', description: 'Possui macarrao, frango, milho, alcaparras e frutas.', price: '10,99', image: 'meals/macrão'},
  {name: "Salada", meal_category_id: '1', description: 'Possui macarrao, frango, milho, alcaparras e frutas.', price: '10,99', image: 'meals/macrão'},
  {name: "Salada", meal_category_id: '1', description: 'Possui macarrao, frango, milho, alcaparras e frutas.', price: '10,99', image: 'meals/macrão'},
  {name: "Molho iogurt", meal_category_id: '2', description: 'Possui azeite, iorgute, alho, limão, hortelã e salsinha.', price: '5,00', image: 'meals/macrão'},
  {name: "Molho iogurt", meal_category_id: '2', description: 'Possui azeite, iorgute, alho, limão, hortelã e salsinha.', price: '5,00', image: 'meals/macrão'},
  {name: "Molho iogurt", meal_category_id: '2', description: 'Possui azeite, iorgute, alho, limão, hortelã e salsinha.', price: '5,00', image: 'meals/macrão'},
  {name: "Molho iogurt", meal_category_id: '2', description: 'Possui azeite, iorgute, alho, limão, hortelã e salsinha.', price: '5,00', image: 'meals/macrão'}
]
