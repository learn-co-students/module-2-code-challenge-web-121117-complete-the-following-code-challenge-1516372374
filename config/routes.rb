Rails.application.routes.draw do
  resources :superpowers, only: [:index, :show]
  resources :superheroes, only: [:index, :show, :new, :create]

  get '/superpowers/search', to: 'superpowers#search', as: 'superpowers_search'

end
