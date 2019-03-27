Rails.application.routes.draw do
  get 'users/create'
  resources :tasks
  resources :assignments 
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  } 
  root 'assignments#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
