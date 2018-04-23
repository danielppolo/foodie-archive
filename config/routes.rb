Rails.application.routes.draw do
  get 'order/new' to: 'orders#new'

  get 'order/create' to: 'orders#create'

  devise_for :users
  get 'users/:id', to: 'users#show', as: 'user'
  get 'users/:id/edit', to: 'users#edit', as: 'edit_user'
  put 'users/:id', to: 'users#update'
  delete 'users/:id/destroy', to: 'users#destroy', as: 'destroy_user'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
