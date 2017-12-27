Rails.application.routes.draw do
 

  post  '/tasks/create'
  post '/tasks/update'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :home  
  resources :tasks
  root to: "home#index"
  
end
