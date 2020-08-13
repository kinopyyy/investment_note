Rails.application.routes.draw do
  devise_for :users
  root "posts#index"  
  resources :posts, only: [:new, :create, :index,:edit,:update, :destroy]
  resources :users, only: [:create, :show]
  post 'users/:id' => 'users#show'

end