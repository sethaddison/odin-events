Rails.application.routes.draw do
  get '/user/:id', to: 'users#profile', as: :user
  resources :users, only: :index
  root 'events#index'
  resources :events do
    member do
      get 'rsvp'
      get 'cancel_rsvp'
    end
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
