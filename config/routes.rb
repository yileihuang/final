Rails.application.routes.draw do
  
  resources :groups do
  	resources :members
  	resources :visits
  end
  resources :users
  resources :sessions
  resources :touristsites


  get "/logout", to: "sessions#destroy"

  root to: "groups#index"

end
