Rails.application.routes.draw do
  resources :superpowers
  resources :superheroes

  # get '/superheroes/search', to: "superheroes#search"

end
