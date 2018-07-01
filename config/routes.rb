Rails.application.routes.draw do
  devise_for :admins
  resources :categories
  devise_for :users,:controllers => { :registrations =>'users/registrations'}
  root :to =>'home#index'
  get 'admin', to: 'admin#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
