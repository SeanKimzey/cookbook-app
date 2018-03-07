class RecipesController < ApplicationController
  def show_the_recipe
    recipes = Recipe.all
    render json: {recipes: Recipe.all}
  end
end
