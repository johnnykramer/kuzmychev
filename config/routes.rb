Rails.application.routes.draw do
  root 'notes#index'
  resources :notes
  resources :pictures, only: [:create, :destroy]
  resources :tags, only: [:show]
end
