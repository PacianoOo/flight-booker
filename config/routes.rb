require 'sidekiq/web'

Rails.application.routes.draw do
  get 'flight/index'
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end

  resources :flight
  resources :booking
  devise_for :users
  root to: 'flight#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
