Rails.application.routes.draw do
  root to: 'pages#home'
  resources :glasses
  get '/admin/dash', to: 'pages#dashboard'
  get '/sink', to: 'pages#sink'
end
