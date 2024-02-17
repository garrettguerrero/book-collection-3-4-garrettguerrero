Rails.application.routes.draw do
<<<<<<< Updated upstream
  resources :books
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
=======
  resources :user_books
  resources :users
>>>>>>> Stashed changes

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'user_books#index'

  resources :books do 
    member do
      get :delete
    end
    
end
