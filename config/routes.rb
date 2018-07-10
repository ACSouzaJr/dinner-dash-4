Rails.application.routes.draw do
  resources :categoria
  devise_for :users,:controllers => { :registrations =>'users/registrations'}
  root :to =>'home#index'
  resources :users, except: [:create, :new, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
