Rails.application.routes.draw do
  devise_for :users
  resources :foods
  resources :recipes do
    resources :recipe_foods
  end
  post '/recipes/:recipe_id/recipe_foods', to: 'recipe_foods#create', as: 'create_recipe_recipe_food'
  patch '/recipes/:recipe_id/recipe_foods', to: 'recipe_foods#update'
  get '/general_shopping_list', to: 'shopping_lists#index'
  resources :users

  resources :public_recipes, only: [:index]

  # Defines the root path route ("/")
  root "public_recipes#index"
end
