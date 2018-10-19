Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'all', to: "notes#all"
  get 'random', to: 'notes#random'

  resources :notes

  root 'notes#index'
end
