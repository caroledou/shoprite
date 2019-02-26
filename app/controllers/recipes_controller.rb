class RecipesController < ApplicationController
  def index
    @recipe = Recipe.all.sample
  end
end
