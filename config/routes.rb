Rails.application.routes.draw do
  #get 'carts/show'
  #resources :order_meals, only: [:create]
  resources :orders
  resources :situations
  resources :meals
  resources :meal_categories, only: [:create]
  devise_for :users,:controllers => { :registrations =>'users/registrations'}
  root :to =>'home#index'
  resources :users, except: [:create, :new, :show]

  post 'order_meals', to: 'order_meals#create'
  patch 'order_meals', to: 'order_meals#update'
  delete 'order_meals', to: 'order_meals#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
