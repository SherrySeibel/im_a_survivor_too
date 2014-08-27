Rails.application.routes.draw do
  resource :home, only: [:index]
  devise_for :users
  resource :user, only: [:show, :edit, :update]
  resources :stories, only: [:new, :create, :destroy]

  root to: "homes#index"
end
