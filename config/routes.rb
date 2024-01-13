Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [:show]

  resources :posts do
    resources :likes, only: [:create, :destroy]
  end
  get 'posts/:post_id/likes' => 'likes#create', as:'posts_likes'
  root 'posts#index'
  resources :aromas


end
