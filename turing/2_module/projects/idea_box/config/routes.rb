Rails.application.routes.draw do
  root to: 'users#index'
  resources :users
  resources :ideas

  get '/signup', to: 'users#new'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'



end
