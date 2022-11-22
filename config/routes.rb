Rails.application.routes.draw do
  devise_for :users
  root to: "friends#index"
  resources :friends, only: [:index, :show, :new, :create]
  get "pages/:id", to: "pages#show", as: :profile
  resources :bookings, only: [:show, :new, :create, :index]
end
