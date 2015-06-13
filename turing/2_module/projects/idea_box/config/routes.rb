Rails.application.routes.draw do
  root to: 'users#index'
  resources :users

  get '/signup', to: 'users#new'

end
