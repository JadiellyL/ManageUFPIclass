Rails.application.routes.draw do
  resources :courses
  resources :students
  resources :reservas
  resources :salas
  root to: 'visitors#index'
  post 'users/approve_user', to: 'users#approve_user', as: :approve_user
  devise_for :users
  resources :users
end
