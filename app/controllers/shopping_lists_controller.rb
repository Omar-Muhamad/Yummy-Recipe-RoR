class ShoppingListsController < ApplicationController
    load_and_authorize_resource

    def index
      @recipes = Recipe.where(user_id: current_user.id)
      @recipe_foods = []
      @recipes.each do |recipe|
        @recipe_foods << recipe.recipe_foods
      end
    end
end