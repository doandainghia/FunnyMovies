Rails.application.routes.draw do
  root "movies#index"
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users, only: [:new, :create, :edit, :update, :show]
  resources :movies
end
