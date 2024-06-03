Rails.application.routes.draw do
  resources :articles do
    post 'create_comment', on: :member
  end
resources :posts  
root 'posts#index'
end
