Rails.application.routes.draw do
  devise_for :users
  root to: "friends#index"
  resources :friends, only: [:index, :show, :new, :create, :update] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:show, :index, :destroy]
  get "pages/:id", to: "pages#show", as: :profile
end
