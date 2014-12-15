Rails.application.routes.draw do

  get 'home/index'
  get 'home/dashboard'
  get 'home/sample'


  # App routes
  resources :users
  root to: 'home#sample', via: :get

  # OmniAuth Routes
  get 'auth/facebook', as: "auth_provider"
  get 'auth/failure', to: redirect('/')
  get 'auth/:provider/callback', to: 'users#create'
  get 'signout', to: 'users#destroy', as: 'signout'
  
  resources :marks 
  resources :cleans
  get 'login' => 'sessions#login'
  get 'dashboard' => 'home#dashboard'
end
