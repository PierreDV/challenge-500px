Rails.application.routes.draw do
  root   'photos#index'
  get    'photos/like'
  get    'request_error'  => 'photos#request_error'
  get    '/auth/500px', as: 'login'
  get    '/auth/500px/callback' => 'sessions#create'
  delete 'logout'               => 'sessions#destroy'
  resources :photos
end
