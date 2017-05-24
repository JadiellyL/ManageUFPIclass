Rails.application.routes.draw do
  resources :students
  resources :reservas
  resources :salas
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
