Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'recipes#index'
  resources :recipes do
    post '/', to: 'ratings#create', as: 'create_rating'
    resources :ingredients
    post 'ingredients/new', to: 'ingredients#create', as: 'create_ingredient'
  end
  resources :categories, only: [:index]
  resources :dataprotection, only: [:index]
  resources :imprint, only: [:index]
  resources :news, only: [:index]
end
