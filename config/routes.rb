Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'all', to: "notes#all"
  get 'random', to: 'notes#random'

  resources :notes

  root 'notes#index'
end
