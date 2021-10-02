Rails.application.routes.draw do
  get    'inns/index'
  get    'users/index'
  get    '/login'   => 'sessions#new'
  post   '/login'   => 'sessions#create'
  delete '/logout'  => 'sessions#destroy'
  
  get 'inns/result' => 'inns#search_result'
  
  # post 'reservations/new' => 'reservations#new'
  # get  'reservations/confirm' => 'reservations#confirm'
  # post 'reservations/confirm' => 'reservations#confirm'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :inns do
    resources :reservations
    post 'reservations/confirm' => 'reservations#confirm'
    # collection do
    # post :confirm
    # end
  end
  resources :users
  resources :reservations
end
