Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'restaurants', to: 'restaurants#index'
  post 'restaurants', to: 'restaurants#create'
  get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  post 'reviews/:restaurant_id/reviews', to: 'reviews#create', as: :restaurant_reviews

  # root to: 'restaurants#index'
  # resources :restaurants, only: [:index, :create, :new, :show] do
  #   resources :reviews, only: [:create]
  # end
end
