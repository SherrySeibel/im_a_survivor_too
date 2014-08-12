Rails.application.routes.draw do
  devise_for :users
  resource :home, only: [:index]
  resource :profile, only: [:show]

  root to: "home#index"
end
