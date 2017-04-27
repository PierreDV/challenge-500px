Rails.application.routes.draw do
  root   'photos#index'
  get    '/auth/500px', as: 'login'
  get    '/auth/500px/callback' => 'sessions#create'
  delete 'logout'               => 'sessions#destroy'
  resources :photos
end
