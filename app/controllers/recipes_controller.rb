class RecipesController < ApplicationController
  def index
    @recipe = Recipe.first
  end
end
