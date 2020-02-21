Rails.application.routes.draw do
  get 'posts/index'

  get 'tasks/index'

  root 'static_pages#top'
  get '/signup', to: 'users#new'
  
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  get    'posts/new', to: 'posts#new'
  post   'posts/create', to:'posts#create'
  get    'posts/index', to: 'posts#index'
  get    'posts/:id', to: 'posts#show', as: :post  
  get    'posts/:id/edit', to: 'posts#edit', as: :edit_post
  post 'posts/:id/update', to: 'posts#update', as: :update_post
  post 'posts/:id/destroy', to: 'posts#destroy', as: :destroy_post
  delete '/logout', to: 'sessions#destroy'
  
  resources :users
end
