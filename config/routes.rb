Rails.application.routes.draw do

  root 'site#index'

  devise_for :users

  get 'users/:id', to: 'users#show', as: 'dashboard'

end
