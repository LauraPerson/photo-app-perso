Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#home'

  get 'about', to:'pages#about'
  get 'contact', to:'pages#contact'


  resources :contacts, only: [:new, :create]
  resources :users, only: [:show]

  resources :series do
    resources :images, only: [:new, :create]
  end

  # delete '/images/:id', to: 'series#remove_image', as: :remove_image


  
  


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
