Rails.application.routes.draw do
  root "posts#index"
  resources :posts do
    collection do
      
      get 'dammy'

    end
  
  end

 
end
