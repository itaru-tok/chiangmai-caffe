Rails.application.routes.draw do
  devise_for :users
  root "caffes#index"
  resources :caffes
  resources :users, only: [:index, :show]
end
