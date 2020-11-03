Rails.application.routes.draw do
  root to: 'sessions#new'
  resources :users

  get 'signup', to: 'users#new', as: 'signup'
  post 'sessions', to: 'sessions#create'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
end
