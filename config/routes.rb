Rails.application.routes.draw do

  get 'sessions_admin/new'

  get 'sessions_admins/new'

  get 'sessions/new'

  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'


  resources :categories
  resources :users
  resources :admins
  resources :posts


end
