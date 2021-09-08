Rails.application.routes.draw do
  root to: 'works#index'
  resources :works, only: [:index, :new, :show]
end
