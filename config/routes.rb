Rails.application.routes.draw do
  get    'inns/index'
  get    'users/index'
  get    '/login'   => 'sessions#new'
  post   '/login'   => 'sessions#create'
  delete '/logout'  => 'sessions#destroy'
  
  get 'inns/result' => 'inns#search_result'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :inns
  resources :users
  resources :reservations
end
