Rails.application.routes.draw do
  resource :home, only: [:index]
  devise_for :users
  resource :profile, only: [:show]

  root to: "home#index"
end
