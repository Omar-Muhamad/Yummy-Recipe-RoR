Rails.application.routes.draw do
  devise_for :users

  resources :foods
  resources :recipes do
    resources :recipe_foods
  end
  resources :users

  resources :public_recipes, only: [:index]

  # Defines the root path route ("/")
  root "public_recipes#index"
end
