Rails.application.routes.draw do

  resources :dogs
  resources :foos
  devise_for :users
  root 'welcome#index'

  resources :reservations
end
