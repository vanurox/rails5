Rails.application.routes.draw do
  get 'users/index'

  get 'users/show'

  post "users/create"
  
  get "users/delete"

  root "users#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
