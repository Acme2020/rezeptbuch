Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root "recipes#index"
resources :recipes do
  resources :ingredients
  end
resources :categories, only: [:index]
resources :dataprotection, only: [:index]
resources :imprint, only: [:index]
resources :news, only: [:index]
end
