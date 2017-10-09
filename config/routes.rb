Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Route for root
  authenticated :user do
    root to: "home#index"
  end
  root to: "static_pages#index"
  get "sign_in" , to: "static_pages#sign_in", as: "static_pages_sign_in"
  get "sign_up" , to: "static_pages#sign_up", as: "static_pages_sign_up"

  # Route for users whit devise
  devise_for :users, controllers: {
    registrations: "users/registrations",
    sessions: "users/sessions",
    passwords: "users/passwords",
    omniauth_callbacks: "users/omniauth_callbacks",
    confirmations: "users/confirmations",
    unlocks: "users/unlocks"
  }
  devise_for :chefs, controllers: {
    registrations: "chefs/registrations",
    sessions: "chefs/sessions",
    passwords: "chefs/passwords",
    confirmations: "chefs/confirmations",
    unlocks: "chefs/unlocks"
  }
  devise_for :admins, controllers: {
    registrations: "admins/registrations",
    sessions: "admins/sessions",
    passwords: "admins/passwords",
    confirmations: "admins/confirmations",
    unlocks: "admins/unlocks"
  }

  # Route for users profiles
  resources :profiles, only: [:show]
end
