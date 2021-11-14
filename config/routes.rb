Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'series#index'

  get 'about', to:'pages#about'
  get 'contact', to:'pages#contact'


  resources :series, only: [:new, :create, :index, :show] do
    resources :images, only: [:new, :create, :show]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
