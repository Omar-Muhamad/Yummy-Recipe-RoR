Rails.application.routes.draw do
  devise_for :users
  resources :foods
  resources :recipes do 
    resources :recipe_foods  
  end
  post '/recipes/:recipe_id/recipe_foods', to: 'recipe_foods#create', as: 'create_recipe_recipe_food'
  resources :users

  resources :public_recipes, only: [:index]

  # Defines the root path route ("/")
  root "public_recipes#index"
end
