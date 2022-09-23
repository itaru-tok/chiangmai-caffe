Rails.application.routes.draw do
  devise_for :users
  root "caffes#index"
  resources :caffes
end
