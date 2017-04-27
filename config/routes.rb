Rails.application.routes.draw do
  root 'photos#index'
  get '/auth/500px'
  get '/auth/500px/callback', to: 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  resources :photos
end
