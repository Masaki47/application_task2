Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show,:create,:index,:edit,:update] do
  end
  resources :books, only: [:show,:create,:index,:edit,:update,:destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end

  root 'homes#top'
  get 'home/about' => 'homes#about'
end