Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'
  resources :users, only: :show do
    resources :prototypes, except: [:show, :index]
  end
  resources :prototypes, only: :show
end
