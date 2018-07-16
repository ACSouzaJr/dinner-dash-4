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
Order.destroy_all

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
  {name: "Salada", meal_category: MealCategory.find_by(name: "Saladas"), description: 'Possui macarrao, frango, milho, alcaparras e frutas.', price: '10,99', image: Rails.root.join("app/assets/images/meals/macrao.jpg").open},
  {name: "Salada", meal_category: MealCategory.find_by(name: "Saladas"), description: 'Possui macarrao, frango, milho, alcaparras e frutas.', price: '10,99', image: Rails.root.join("app/assets/images/meals/macrao.jpg").open},
  {name: "Salada", meal_category: MealCategory.find_by(name: "Saladas"), description: 'Possui macarrao, frango, milho, alcaparras e frutas.', price: '10,99', image: Rails.root.join("app/assets/images/meals/macrao.jpg").open},
  {name: "Salada", meal_category: MealCategory.find_by(name: "Saladas"), description: 'Possui macarrao, frango, milho, alcaparras e frutas.', price: '10,99', image: Rails.root.join("app/assets/images/meals/macrao.jpg").open},
  {name: "Molho iogurt", meal_category: MealCategory.find_by(name: "Molhos"), description: 'Possui azeite, iorgute, alho, limão, hortelã e salsinha.', price: '5,00', image: Rails.root.join("app/assets/images/meals/macrao.jpg").open},
  {name: "Molho iogurt", meal_category: MealCategory.find_by(name: "Molhos"), description: 'Possui azeite, iorgute, alho, limão, hortelã e salsinha.', price: '5,00', image: Rails.root.join("app/assets/images/meals/macrao.jpg").open},
  {name: "Molho iogurt", meal_category: MealCategory.find_by(name: "Molhos"), description: 'Possui azeite, iorgute, alho, limão, hortelã e salsinha.', price: '5,00', image: Rails.root.join("app/assets/images/meals/macrao.jpg").open},
  {name: "Molho iogurt", meal_category: MealCategory.find_by(name: "Molhos"), description: 'Possui azeite, iorgute, alho, limão, hortelã e salsinha.', price: '5,00', image: Rails.root.join("app/assets/images/meals/macrao.jpg").open}
]

#Situation
Situation.create! [
  {description: "pendente"},
  {description: "entregue"},
  {description: "cancelado"}
]

#Orders
Order.create! [
  {situation_id: '1', user_id: '2', price: '72,00'},
  {situation_id: '3', user_id: '2', price: '105,00'},
  {situation_id: '1', user_id: '3', price: '90,00'},
  {situation_id: '2', user_id: '5', price: '145,00'},
  {situation_id: '1', user_id: '3', price: '90,00'},
  {situation_id: '2', user_id: '5', price: '145,00'},
  {situation_id: '1', user_id: '3', price: '90,00'},
  {situation_id: '2', user_id: '5', price: '145,00'},
  {situation_id: '1', user_id: '3', price: '90,00'},
  {situation_id: '2', user_id: '5', price: '145,00'}
]
