Rails.application.routes.draw do

  root 'site#index'

  devise_for :users

  get 'users/:id', to: 'users#show', as: 'dashboard'

  get '/dashboard' => 'site#dashboard'
  get '/edit' => 'site#edit'

end

