Rails.application.routes.draw do
  resource :home, only: [:index]
  devise_for :users do
    resource :profile, only: [:show]
  end

  root to: "home#index"
end
