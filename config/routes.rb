Rails.application.routes.draw do
  resources :users
  resources :pictures

  root 'pictures#index'
end
