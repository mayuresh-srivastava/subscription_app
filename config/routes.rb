Rails.application.routes.draw do
  get 'users/info', to: 'users#info'
  post 'users/charge', to: 'users#charge'
  get 'users/cancel_subscription', to: 'users#cancel_subscription'

  get 'publications/index'

  get 'publications/show'

  devise_for :users
  get 'home/index'
  root to: "home#index"
  resources :publications, only: [:index, :show]
  namespace :admin do
  	resources :publications
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
