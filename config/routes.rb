Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bays
  resources :cars
  resources :companies
  resources :items
  resources :login_histories
  resources :logins
  resources :manufacturers
  resources :roles
  resources :transports
  resources :transport_types
  resources :transport_states

  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
end
