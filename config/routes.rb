Rails.application.routes.draw do
  resource :home, only: [:index]
  devise_for :users

  root to: "home#index"
end
