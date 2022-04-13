class PublicRecipesController < ApplicationController
  load_and_authorize_resource

  def index
    @recipes = Recipe.all
  end
end
