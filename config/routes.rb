Rails.application.routes.draw do

  resources :foos
  devise_for :users
  root 'welcome#index'

  resources :reservations
end
