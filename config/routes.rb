Rails.application.routes.draw do
  resources :photographies
  devise_for :users, controllers: {
              sessions: 'users/sessions',
              registrations: 'users/registrations'
              }
  resources :comments, only: [:create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "photographies#index"
end
