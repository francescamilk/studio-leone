Rails.application.routes.draw do
  # devise_for :users
  root to: 'pages#home'
  resources :glasses
  get '/contatti', to: 'pages#contacts'
  get '/admin/dash', to: 'pages#dashboard'
  get '/sink', to: 'pages#sink'
end
