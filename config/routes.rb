Rails.application.routes.draw do
  devise_for :users
  root "posts#index"  
  # resources :posts do 
  resources :posts, only: [:new, :create, :index, :show,:edit,:update, :destroy]
  resources :users, only: [:new, :create, :show]
  post 'users/:id' => 'users#show'

end