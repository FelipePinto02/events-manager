Rails.application.routes.draw do
  devise_for :users
  resources :users, only: %i[index show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'events#index'

  resources :events
  resources :event_attendances, only: %i[create update destroy]
end
