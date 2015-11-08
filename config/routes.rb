Rails.application.routes.draw do

  root 'static_pages#start'

  get 'start', to: 'static_pages#start', as: :start
  get 'home', to: 'static_pages#home', as: :home
  get 'aboutus', to: 'static_pages#aboutus', as: :aboutus


  resources :categories
  resources :users
  resources :posts
  resources :schools
  resources :category_posts



end
