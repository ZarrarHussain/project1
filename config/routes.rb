Rails.application.routes.draw do
  get 'users/sign_out'
  resources :articles do
    post 'create_comment', on: :member
  end
  
resources :posts  

root to: 'users#index'
  devise_for :users
  resources :posts, only: [:show]

end
