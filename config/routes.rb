Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get "/superheroes", to:'super_heroes#index'
get "/superheroes/:id", to: 'super_heroes#show'
post "/superheroes", to:'super_heroes#create'
patch "/superheroes/:id", to: 'super_heroes#update'
delete "/superheroes/:id", to: 'super_heroes#destroy'
end
