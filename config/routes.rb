Rails.application.routes.draw do
  devise_for :users
  resources :users, only: :show
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'events#index'

  resources :events
  resources :event_attendances, only: %i[create destroy]
end
