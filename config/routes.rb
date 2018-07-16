Rails.application.routes.draw do
  
  root :to =>'home#index'
  devise_for :users,:controllers => { :registrations =>'users/registrations'}
  resources :users, except: [:create, :new, :show]
  resources :meal_categories, except: [:show]
  resources :meals
  resources :orders
  get 'carts/show'

  post 'order_meals', to: 'order_meals#create'
  patch 'order_meals', to: 'order_meals#update'
  delete 'order_meals', to: 'order_meals#destroy'
  
end
