Rails.application.routes.draw do
  # get 'users/index'

  # get 'users/show'

  # post "users/create"
  
  get "users/delete"
  get "users/edit"
  post "users/update"

  resources :users

  root "users#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
