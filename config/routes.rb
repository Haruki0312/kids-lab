Rails.application.routes.draw do
  devise_for :users
  root to: 'works#index'
  resources :works, only: [:index, :new, :create, :show] do
    resources :comments, only: [:new, :create]
    resources :likes, only: [:create, :destroy]
    collection do
      get 'search'
    end
  end
  resources :users, only: [:edit, :update]
end
