Rails.application.routes.draw do

  resources :dogs
  devise_for :users
  root 'welcome#index'

  resources :reservations
end
