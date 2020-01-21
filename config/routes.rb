Rails.application.routes.draw do

  # get 'users/item/new', to: 'users#new', as: 'users_item'
  resources :items 
  resources :bids

  resources :users, except: [:delete]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
