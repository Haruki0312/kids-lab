Rails.application.routes.draw do
  devise_for :users
  root to: 'works#index'
  resources :works, only: [:index, :new, :create, :show] do
    resources :comments, only: [:create]
  end
  resources :users, only: [:edit, :update]
end
