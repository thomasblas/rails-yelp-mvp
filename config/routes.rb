Rails.application.routes.draw do
  # get '/restaurants', to: 'restaurants#index', as: :restaurants

  # post '/restaurants', to: 'restaurants#create'
  # get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant

  # get '/restaurants/:id', to: 'restaurants#show', as: :restaurant

  # get '/restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  # patch '/restaurants/:id', to: 'restaurants#update'

  # delete 'restaurants/:id', to: 'restaurants#destroy'

  resources :restaurants, only: [:index, :show, :new, :create,] do
    resources :reviews, only: [:new, :create]
  end
  # post '/restaurants/:id/reviews', to: 'reviews#create'
  # get '/restaurants/:id/reviews/new"', to: 'reviews#new', as: :new_review
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
