Rails.application.routes.draw do
  resources :items
  resources :users
  resources :orders, except: :destroy  # Заказы должны оставаться в базе данных
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'show' => 'users#show'
  get 'show' => 'items#show'
 # get 'index' => 'items#index'
 # get 'index' => 'users#index'
end