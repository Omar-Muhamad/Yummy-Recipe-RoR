Rails.application.routes.draw do
  devise_for :users
  resources :recipe_foods
  resources :foods
  resources :users do
    resources :recipes
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "recipes#public_recipes"
end
