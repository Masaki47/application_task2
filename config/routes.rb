Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show,:create,:index,:edit,:update] do
    resource :relationships, only: [:create, :destroy]
  	get 'followings' => 'relationships#followings', as: 'followings'
  	get 'followers' => 'relationships#followers', as: 'followers'
  end

  resources :books, only: [:show,:create,:index,:edit,:update,:destroy] do
  end

  root 'homes#top'
  get 'home/about' => 'homes#about'


end