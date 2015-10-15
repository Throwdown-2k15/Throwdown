Rails.application.routes.draw do

  root 'site#index'

  devise_for :users
  resources :users, :except => [:show]
  resources :tdowns

  get '/dashboard' => 'users#dashboard'
  get '/edit' => 'site#edit'
  get '/create_profile' => 'site#create_profile'

end

