class RecipesController < ApplicationController
  def show_the_recipes
    recipes = Recipe.all
    render json: {recipes: Recipe.all}
  end
end
