Rails.application.routes.draw do
  root "posts#index"  
  # resources :posts do 
  resources :posts, only: [:new, :create, :index]
  

end
