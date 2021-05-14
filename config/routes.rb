Rails.application.routes.draw do
  
  devise_for :users
  root to: 'homes#top'
  resources :books
  resources :users
  resources :post_images, only: [:create]
  
end
