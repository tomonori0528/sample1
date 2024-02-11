Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :hello
  root 'hello#index'

  resources :users

  resources :photos do
    resources :narratives, only: [:create]

  end
  
  




end
