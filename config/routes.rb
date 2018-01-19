Rails.application.routes.draw do
  resources :superpowers, only: [:index, :show]
  resources :superheroes
  # post '/superheroes', to: 'superheroes#supersearch'

end
