Rails.application.routes.draw do
  root 'static_pages#top'
  get '/signup', to: 'users#new'
  
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  get    'task', to: 'static_pages#task'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users
end
