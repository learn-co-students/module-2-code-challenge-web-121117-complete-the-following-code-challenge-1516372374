Rails.application.routes.draw do
  get '/superheroes/search', to: 'superheroes#search'
  resources :superpowers, only: [:index, :show]
  resources :superheroes, only: [:index, :show, :new, :create]

end
