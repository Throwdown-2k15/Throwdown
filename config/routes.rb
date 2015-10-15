Rails.application.routes.draw do

  root 'site#index'

  devise_for :users
  resources :users, :except => [:show]

  get 'users/:id', to: 'users#dashboard', as: 'dashboard'

  get '/dashboard' => 'site#dashboard'
  get '/edit' => 'site#edit'

end

