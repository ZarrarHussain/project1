Rails.application.routes.draw do
  resources :post_comments
  get 'users/sign_out'
  resources :articles, :has_many => :comments
  
resources :posts , :has_many => :comments

root to: 'users#index'
  devise_for :users
  resources :posts, only: [:show]

end
