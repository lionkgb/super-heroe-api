Rails.application.routes.draw do

get "/superheroes", to:'super_heroes#index'
get "/superheroes/:id", to: 'super_heroes#show'
post "/superheroes", to:'super_heroes#create'
patch "/superheroes/:id", to: 'super_heroes#update'
delete "/superheroes/:id", to: 'super_heroes#destroy'


  namespace :api do
    namespace :v1 do
      get "/superheroes", to:'super_heroes#index'
      get "/superheroes/:id", to: 'super_heroes#show'
      post "/superheroes", to:'super_heroes#create'
      patch "/superheroes/:id", to: 'super_heroes#update'
      delete "/superheroes/:id", to: 'super_heroes#destroy'
    end 
  end
end
