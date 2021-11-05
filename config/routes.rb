Rails.application.routes.draw do
  devise_for :users

  resources :profiles
  resources :conversations do
    resources :messages
  end

  get 'static/home', to: "static#home", as: :home

  root to: "static#home"
end
