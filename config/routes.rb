Rails.application.routes.draw do
  resource :home, only: [:index]
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :stories, only: [:new, :create]

  root to: "homes#index"
end
