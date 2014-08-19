Rails.application.routes.draw do
  resource :home, only: [:index]
  devise_for :users
  resource :user, only: [:show, :update]
  resources :stories, only: [:index, :new, :create]

  root to: "homes#index"
end
