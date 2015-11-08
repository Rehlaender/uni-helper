Rails.application.routes.draw do

  resources :categories
  resources :users
  resources :posts
  resources :schools
  resources :category_posts

end
