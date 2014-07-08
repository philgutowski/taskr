Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :tasks, only: [:index, :create]

  get "/sign-up" => "users#new", as: :sign_up
  get "/sign-in" => "sessions#new", as: :sign_in
  root to: "tasks#index"
end
