Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Ckeditor::Engine => '/ckeditor'
  resources :users,        only: [:new, :create, :update, :edit]
  resources :sessions,     only: [:new, :create, :destroy]
  resources :public_pages, only: [:show, :edit, :update]
  root 'public_pages#home'
  match '/signup',     to: 'users#new',         via: 'get'
  match '/signin',     to: 'sessions#new',      via: 'get'
  match '/signout',    to: 'sessions#destroy',  via: 'delete'
  match '/:name',      to: 'public_pages#show', via: 'get'
  match '/:name/edit', to: 'public_pages#edit', via: 'get'
  
end
