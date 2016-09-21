Rails.application.routes.draw do

  root :to => 'room_tasks#new'

  resources :room_tasks

  post 'logout' => 'user_sessions#destroy', :as => :logout

  resources :users

  patch '/users/', to: 'users#role'

  resources :user_sessions

  get 'login' => 'user_sessions#new', :as => :login

end
