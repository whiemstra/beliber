Rails.application.routes.draw do
  root to: 'users#index'
  resources :users
  resources :ideas

  get '/signup', to: 'users#new'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'


  get '/idea', to: 'ideas#new'
  post '/idea', to: 'ideas#create'
  # get '/idea', to: 'ideas#destroy'
end
