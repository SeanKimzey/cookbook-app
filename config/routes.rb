Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  namespace :v1 do

    get '/recipes' => 'recipes#index'
    get '/recipes/:id' => 'recipes#show'
    post '/recipes' => 'recipes#create'
    patch '/recipes/:id' => 'recipes#update'
    delete '/recipes/:id' => 'recipes#destroy'
    post "/users" => "users#create"

  end
end 
