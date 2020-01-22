Rails.application.routes.draw do


  # get 'users/item/new', to: 'users#new', as: 'users_item'
  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
  resources :items 
  resources :bids

  resources :users, except: [:delete]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
