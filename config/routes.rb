Rails.application.routes.draw do
  resource :home, only: [:index]
  devise_for :users
  resource :user, only: [:show, :update]

  root to: "home#index"
end
