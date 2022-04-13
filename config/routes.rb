Rails.application.routes.draw do
  devise_for :users
  resources :recipe_foods
  resources :foods
  resources :recipes
  resources :users

  resources :public_recipes, only: [:index]

  # Defines the root path route ("/")
  root "public_recipes#index"
end
