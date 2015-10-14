Rails.application.routes.draw do
  root 'site#index'
  get '/dashboard' => 'site#dashboard'
  get '/edit' => 'site#edit'
end

