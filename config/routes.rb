Rails.application.routes.draw do
  devise_for :users

  resources :profiles
  resources :conversations do
    resources :messages
  end

  get 'home', to: "static#home", as: :home
  get 'about', to: "static#about", as: :about

  root to: "static#home"
end
