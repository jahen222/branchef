Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Route for root
  authenticated :user do
    root to: "home#index"
  end
  root to: "static_pages#index"

  # Route for user whit devise
  devise_for :users

  # Route for users profiles
  resources :profiles, only: [:show]

end
