Rails.application.routes.draw do
  get 'bids/new'
  get 'bids/create'
  resources :items 
  resources :users, except: [:delete]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
