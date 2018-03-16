class V1:: RecipesController < ApplicationController
  def index
    recipes = Recipe.all
    render json: recipes.as_json
  end

  def show

    the_id = params[:id]
    recipe = Recipe.find_by(id: the_id)
    render json: recipe.as_json
  end

  def create

    recipe1 = Recipe.new(
      title: "smoothie", 
      ingredients: "fruit, juice, yogurt", 
      directions: "blend it", 
      prep_time: "2 secondss", 
      chef: "sean", 
      image_url: "n/a"
      )
    recipe1.save
    render json: recipe1.as_json
  end

  def update

    the_id = params[:id]
    recipe = Recipe.find_by(id: the_id)
    recipe.update(
      title: params[:input_title],
      chef: params[:input_chef],
      ingredients: params[:input_ingredients],
      directions: params[:input_directions],
      prep_time: params[:input_prep_time]
    )
    render json: recipe.as_json
  end

  def destroy
   
    the_id = params[:id]
    recipe = Recipe.find_by(id: the_id)
   
    recipe.destroy
    render json: {message: "This record has been deleted"}
  end


end
