Rails.application.routes.draw do
  resources :profiles
  devise_for :users

  get 'static/home', to: "static#home", as: :home

  root to: "static#home"
end
