Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'

  resources :users, only: :show do
    resources :prototypes, only: [:edit, :destroy]
  end

  resources :prototypes, only: [:new, :create, :show, :update]
end
