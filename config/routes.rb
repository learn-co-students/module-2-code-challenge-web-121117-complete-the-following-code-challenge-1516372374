Rails.application.routes.draw do
  resources :superpowers, only: [:index, :new, :show, :edit]
  resources :superheroes, only: [:index, :new, :show, :edit]

end
