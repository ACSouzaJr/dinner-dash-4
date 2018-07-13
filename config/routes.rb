Rails.application.routes.draw do
  get 'carts/show'
  resources :order_meals
  resources :orders
  resources :situations
  resources :meals
  resources :meal_categories
  devise_for :users,:controllers => { :registrations =>'users/registrations'}
  root :to =>'home#index'
  resources :users, except: [:create, :new, :show]
  patch 'order_meals', to: 'order_meals#update'
  delete 'order_meals', to: 'order_meals#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
