Rails.application.routes.draw do

  root 'static_pages#start'

  get 'start', to: 'static_pages#start', as: :start
  get 'home', to: 'static_pages#home', as: :home
  get 'aboutus', to: 'static_pages#aboutus', as: :aboutus



  get 'admin_login' => 'sessions_admin#new'
  post 'admin_login' => 'sessions_admin#create'
  delete 'admin_logout'  => 'sessions_admin#destroy'

  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  resources :categories do
    member do
      get 'posts',to: 'categories#posts'
    end
  end

  resources :users
  resources :admins
  resources :posts
  resources :schools
  resources :category_posts do
    member do
      get 'posts', to: 'category_posts#posts'
    end
  end




end
