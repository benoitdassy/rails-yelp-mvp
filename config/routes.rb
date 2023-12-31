Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :restaurants, only: %i[index show new create] do
    resources :reviews, only: %i[index show new create]
  end
  resources :reviews, only: %i[edit update destroy]
end
