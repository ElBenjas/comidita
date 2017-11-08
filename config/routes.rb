Rails.application.routes.draw do
  resources :users
  resources :pictures

  root 'users#index'
end
