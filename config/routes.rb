Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'

  resources :car_categories
  resources :subsidiaries, only: [:index, :show, :new, :create]
  resources :car_models, only: [:index, :show, :new, :create]
  resources :rentals, only: [:index, :show, :new, :create] do
    resources :car_rentals, only: [ :new, :create] # nested resources
    get 'search', on: :collection
  end

  resources :car_rentals, only: [ :show ] do
    post 'finish', on: :member
  end
end