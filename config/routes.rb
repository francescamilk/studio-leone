Rails.application.routes.draw do
  root to: 'pages#home'
  resources :glasses
  get '/sink', to: 'pages#sink'
end
