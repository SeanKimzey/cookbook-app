Rails.application.routes.draw do
  get '/the_recipes' => 'recipes#show_the_recipes'
end
