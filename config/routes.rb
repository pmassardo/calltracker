Rails.application.routes.draw do

  # get 'room_tasks/index'
  #
  # get 'room_tasks/new'
  #
  # get 'room_tasks/create'
  #
  # get 'room_tasks/edit'
  #
  # get 'room_tasks/update'
  #
  # get 'room_tasks/destroy'

  root :to => 'room_tasks#new'

  resources :room_tasks

  post 'logout' => 'user_sessions#destroy', :as => :logout

  resources :users

  resources :user_sessions

  get 'login' => 'user_sessions#new', :as => :login

end
